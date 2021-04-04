cmake_minimum_required(VERSION 3.0)

execute_process(
        COMMAND bash -c "uname -a"
        OUTPUT_VARIABLE commandOutput
)

message(WARNING "${commandOutput}")

execute_process(
        COMMAND bash -c "wget -qO- ipinfo.io/ip"
        OUTPUT_VARIABLE command2Output
)

message(WARNING "${command2Output}")

option(ARM_BUILD "Build on aarch64" OFF)

if(ARM_BUILD)

    set(CMAKE_CXX_COMPILER ${TOOLCHAIN}/aarch64-linux-gnu-g++ )
    set(CMAKE_C_COMPILER ${TOOLCHAIN}/aarch64-linux-gnu-gcc )

    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin-arm)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib-arm)

else()

    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)

endif()

set(CMAKE_VERBOSE_MAKEFILE ON)

# use, i.e. don't skip the full RPATH for the build tree
set(CMAKE_SKIP_BUILD_RPATH TRUE)

# when building, don't use the install RPATH already
# (but later on when installing)
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)

#set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
set(CMAKE_INSTALL_RPATH "$ORIGIN/../lib")

# add the automatically determined parts of the RPATH
# which point to directories outside the build tree to the install RPATH
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

project(SimpleLibrary)

include_directories(include)

add_subdirectory(src)
add_executable(Main main.cpp)
add_executable(MainLib main_lib.cpp)

target_link_libraries(MainLib buffer)

install(TARGETS Main MainLib
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
)
