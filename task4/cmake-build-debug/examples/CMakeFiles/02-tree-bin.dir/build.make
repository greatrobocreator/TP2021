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

# Include any dependencies generated for this target.
include examples/CMakeFiles/02-tree-bin.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/02-tree-bin.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/02-tree-bin.dir/flags.make

examples/CMakeFiles/02-tree-bin.dir/02-main.cpp.o: examples/CMakeFiles/02-tree-bin.dir/flags.make
examples/CMakeFiles/02-tree-bin.dir/02-main.cpp.o: ../examples/02-main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anton/Documents/Education/TP2021/task4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/02-tree-bin.dir/02-main.cpp.o"
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/02-tree-bin.dir/02-main.cpp.o -c /home/anton/Documents/Education/TP2021/task4/examples/02-main.cpp

examples/CMakeFiles/02-tree-bin.dir/02-main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/02-tree-bin.dir/02-main.cpp.i"
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anton/Documents/Education/TP2021/task4/examples/02-main.cpp > CMakeFiles/02-tree-bin.dir/02-main.cpp.i

examples/CMakeFiles/02-tree-bin.dir/02-main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/02-tree-bin.dir/02-main.cpp.s"
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anton/Documents/Education/TP2021/task4/examples/02-main.cpp -o CMakeFiles/02-tree-bin.dir/02-main.cpp.s

# Object files for target 02-tree-bin
02__tree__bin_OBJECTS = \
"CMakeFiles/02-tree-bin.dir/02-main.cpp.o"

# External object files for target 02-tree-bin
02__tree__bin_EXTERNAL_OBJECTS =

../bin/02-tree-bin: examples/CMakeFiles/02-tree-bin.dir/02-main.cpp.o
../bin/02-tree-bin: examples/CMakeFiles/02-tree-bin.dir/build.make
../bin/02-tree-bin: src/02-tree/lib02-tree.so
../bin/02-tree-bin: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
../bin/02-tree-bin: examples/CMakeFiles/02-tree-bin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anton/Documents/Education/TP2021/task4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/02-tree-bin"
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/02-tree-bin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/02-tree-bin.dir/build: ../bin/02-tree-bin

.PHONY : examples/CMakeFiles/02-tree-bin.dir/build

examples/CMakeFiles/02-tree-bin.dir/clean:
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/examples && $(CMAKE_COMMAND) -P CMakeFiles/02-tree-bin.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/02-tree-bin.dir/clean

examples/CMakeFiles/02-tree-bin.dir/depend:
	cd /home/anton/Documents/Education/TP2021/task4/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anton/Documents/Education/TP2021/task4 /home/anton/Documents/Education/TP2021/task4/examples /home/anton/Documents/Education/TP2021/task4/cmake-build-debug /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/examples /home/anton/Documents/Education/TP2021/task4/cmake-build-debug/examples/CMakeFiles/02-tree-bin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/02-tree-bin.dir/depend

