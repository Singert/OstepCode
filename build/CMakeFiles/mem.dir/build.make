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
include CMakeFiles/mem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mem.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mem.dir/flags.make

CMakeFiles/mem.dir/examples/S5/mem.o: CMakeFiles/mem.dir/flags.make
CMakeFiles/mem.dir/examples/S5/mem.o: /home/singer/learn/ostp/examples/S5/mem.c
CMakeFiles/mem.dir/examples/S5/mem.o: CMakeFiles/mem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/singer/learn/ostp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mem.dir/examples/S5/mem.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/mem.dir/examples/S5/mem.o -MF CMakeFiles/mem.dir/examples/S5/mem.o.d -o CMakeFiles/mem.dir/examples/S5/mem.o -c /home/singer/learn/ostp/examples/S5/mem.c

CMakeFiles/mem.dir/examples/S5/mem.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mem.dir/examples/S5/mem.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/singer/learn/ostp/examples/S5/mem.c > CMakeFiles/mem.dir/examples/S5/mem.i

CMakeFiles/mem.dir/examples/S5/mem.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mem.dir/examples/S5/mem.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/singer/learn/ostp/examples/S5/mem.c -o CMakeFiles/mem.dir/examples/S5/mem.s

# Object files for target mem
mem_OBJECTS = \
"CMakeFiles/mem.dir/examples/S5/mem.o"

# External object files for target mem
mem_EXTERNAL_OBJECTS =

mem: CMakeFiles/mem.dir/examples/S5/mem.o
mem: CMakeFiles/mem.dir/build.make
mem: CMakeFiles/mem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/singer/learn/ostp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable mem"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mem.dir/build: mem
.PHONY : CMakeFiles/mem.dir/build

CMakeFiles/mem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mem.dir/clean

CMakeFiles/mem.dir/depend:
	cd /home/singer/learn/ostp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/singer/learn/ostp /home/singer/learn/ostp /home/singer/learn/ostp/build /home/singer/learn/ostp/build /home/singer/learn/ostp/build/CMakeFiles/mem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mem.dir/depend

