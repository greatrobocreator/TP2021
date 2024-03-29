cmake_minimum_required(VERSION 3.0)

project(Task2)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})


include_directories(${PROJECT_SOURCE_DIR})

add_custom_command(
    OUTPUT index.h
    COMMAND python ${PROJECT_SOURCE_DIR}/A/preparing.py ${PROJECT_SOURCE_DIR}/A/index.h
    DEPENDS A/preparing.py
    COMMENT "Preparing A/index.h"
)

add_custom_target( Preparing DEPENDS index.h)

add_executable(Task2 C/main.cpp)
add_dependencies( Task2 Preparing)

add_subdirectory(${PROJECT_SOURCE_DIR}/B)
target_link_libraries(Task2 BLibrary)



find_package(GTest REQUIRED)
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
include_directories(${gtest_INCLUDE_DIR})
link_directories(${gtest_LIBRARY_DIR})
enable_testing()

add_executable(CTest C/main_test.cpp C/tests.cpp)
target_link_libraries(CTest gtest gtest_main pthread)
add_test( NAME CTest COMMAND CTest )
