cmake_minimum_required(VERSION 2.8)

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
