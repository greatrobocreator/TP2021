# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/149/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/149/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anton/Documents/Education/TP2021/task4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anton/Documents/Education/TP2021/task4/cmake-build-debug

# Utility rule file for 00-coverage-aplusb.

# Include the progress variables for this target.
include tests/00-aplusb/CMakeFiles/00-coverage-aplusb.dir/progress.make

00-coverage-aplusb: tests/00-aplusb/CMakeFiles/00-coverage-aplusb.dir/build.make

.PHONY : 00-coverage-aplusb

# Rule to build all files generated by this target.
tests/00-aplusb/CMakeFiles/00-coverage-aplusb.dir/build: 00-coverage-aplusb

.PHONY : tests/00-aplusb/CMakeFiles/00-coverage-aplusb.dir/build

tests/00-aplusb/CMakeFiles/00-coverage-aplusb.dir/clean:
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/tests/00-aplusb && $(CMAKE_COMMAND) -P CMakeFiles/00-coverage-aplusb.dir/cmake_clean.cmake
.PHONY : tests/00-aplusb/CMakeFiles/00-coverage-aplusb.dir/clean

tests/00-aplusb/CMakeFiles/00-coverage-aplusb.dir/depend:
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anton/Documents/Education/TP2021/task4 /home/anton/Documents/Education/TP2021/task4/tests/00-aplusb /home/anton/Documents/Education/TP2021/task4/cmake-build-debug /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/tests/00-aplusb /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/tests/00-aplusb/CMakeFiles/00-coverage-aplusb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/00-aplusb/CMakeFiles/00-coverage-aplusb.dir/depend

