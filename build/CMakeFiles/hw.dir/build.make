# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/singer/learn/ostp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/singer/learn/ostp/build

# Include any dependencies generated for this target.
include CMakeFiles/hw.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hw.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw.dir/flags.make

CMakeFiles/hw.dir/hw.o: CMakeFiles/hw.dir/flags.make
CMakeFiles/hw.dir/hw.o: /home/singer/learn/ostp/hw.cpp
CMakeFiles/hw.dir/hw.o: CMakeFiles/hw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/singer/learn/ostp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hw.dir/hw.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hw.dir/hw.o -MF CMakeFiles/hw.dir/hw.o.d -o CMakeFiles/hw.dir/hw.o -c /home/singer/learn/ostp/hw.cpp

CMakeFiles/hw.dir/hw.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw.dir/hw.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/singer/learn/ostp/hw.cpp > CMakeFiles/hw.dir/hw.i

CMakeFiles/hw.dir/hw.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw.dir/hw.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/singer/learn/ostp/hw.cpp -o CMakeFiles/hw.dir/hw.s

# Object files for target hw
hw_OBJECTS = \
"CMakeFiles/hw.dir/hw.o"

# External object files for target hw
hw_EXTERNAL_OBJECTS =

hw: CMakeFiles/hw.dir/hw.o
hw: CMakeFiles/hw.dir/build.make
hw: CMakeFiles/hw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/singer/learn/ostp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hw"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw.dir/build: hw
.PHONY : CMakeFiles/hw.dir/build

CMakeFiles/hw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw.dir/clean

CMakeFiles/hw.dir/depend:
	cd /home/singer/learn/ostp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/singer/learn/ostp /home/singer/learn/ostp /home/singer/learn/ostp/build /home/singer/learn/ostp/build /home/singer/learn/ostp/build/CMakeFiles/hw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw.dir/depend

