cmake_minimum_required(VERSION 2.8)

project(BLibrary)
set(SOURCE_LIB lib.cpp)
add_library(BlLibrary SHARED ${SOURCE_LIB})
