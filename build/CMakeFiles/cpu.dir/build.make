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
include CMakeFiles/cpu.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cpu.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cpu.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpu.dir/flags.make

CMakeFiles/cpu.dir/examples/cpu.o: CMakeFiles/cpu.dir/flags.make
CMakeFiles/cpu.dir/examples/cpu.o: /home/singer/learn/ostp/examples/cpu.c
CMakeFiles/cpu.dir/examples/cpu.o: CMakeFiles/cpu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/singer/learn/ostp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cpu.dir/examples/cpu.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cpu.dir/examples/cpu.o -MF CMakeFiles/cpu.dir/examples/cpu.o.d -o CMakeFiles/cpu.dir/examples/cpu.o -c /home/singer/learn/ostp/examples/cpu.c

CMakeFiles/cpu.dir/examples/cpu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cpu.dir/examples/cpu.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/singer/learn/ostp/examples/cpu.c > CMakeFiles/cpu.dir/examples/cpu.i

CMakeFiles/cpu.dir/examples/cpu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cpu.dir/examples/cpu.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/singer/learn/ostp/examples/cpu.c -o CMakeFiles/cpu.dir/examples/cpu.s

# Object files for target cpu
cpu_OBJECTS = \
"CMakeFiles/cpu.dir/examples/cpu.o"

# External object files for target cpu
cpu_EXTERNAL_OBJECTS =

cpu: CMakeFiles/cpu.dir/examples/cpu.o
cpu: CMakeFiles/cpu.dir/build.make
cpu: CMakeFiles/cpu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/singer/learn/ostp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cpu"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpu.dir/build: cpu
.PHONY : CMakeFiles/cpu.dir/build

CMakeFiles/cpu.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpu.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpu.dir/clean

CMakeFiles/cpu.dir/depend:
	cd /home/singer/learn/ostp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/singer/learn/ostp /home/singer/learn/ostp /home/singer/learn/ostp/build /home/singer/learn/ostp/build /home/singer/learn/ostp/build/CMakeFiles/cpu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpu.dir/depend

