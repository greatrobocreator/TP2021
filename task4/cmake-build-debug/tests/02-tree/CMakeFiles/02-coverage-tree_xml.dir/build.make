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

# Utility rule file for 02-coverage-tree_xml.

# Include the progress variables for this target.
include tests/02-tree/CMakeFiles/02-coverage-tree_xml.dir/progress.make

tests/02-tree/CMakeFiles/02-coverage-tree_xml:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/anton/Documents/Education/TP2021/task4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running gcovr in xml format."
	/home/anton/Documents/Education/TP2021/task4/bin/02-tree-test 02-coverage
	/home/anton/Documents/Education/TP2021/task4/PythonEnvironment/bin/gcovr -x --xml-pretty --filter /home/anton/Documents/Education/TP2021/task4/src/02-tree -r /home/anton/Documents/Education/TP2021/task4/src -o 02-coverage.xml src tests

02-coverage-tree_xml: tests/02-tree/CMakeFiles/02-coverage-tree_xml
02-coverage-tree_xml: tests/02-tree/CMakeFiles/02-coverage-tree_xml.dir/build.make

.PHONY : 02-coverage-tree_xml

# Rule to build all files generated by this target.
tests/02-tree/CMakeFiles/02-coverage-tree_xml.dir/build: 02-coverage-tree_xml

.PHONY : tests/02-tree/CMakeFiles/02-coverage-tree_xml.dir/build

tests/02-tree/CMakeFiles/02-coverage-tree_xml.dir/clean:
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/tests/02-tree && $(CMAKE_COMMAND) -P CMakeFiles/02-coverage-tree_xml.dir/cmake_clean.cmake
.PHONY : tests/02-tree/CMakeFiles/02-coverage-tree_xml.dir/clean

tests/02-tree/CMakeFiles/02-coverage-tree_xml.dir/depend:
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anton/Documents/Education/TP2021/task4 /home/anton/Documents/Education/TP2021/task4/tests/02-tree /home/anton/Documents/Education/TP2021/task4/cmake-build-debug /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/tests/02-tree /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/tests/02-tree/CMakeFiles/02-coverage-tree_xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/02-tree/CMakeFiles/02-coverage-tree_xml.dir/depend

