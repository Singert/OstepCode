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
CMAKE_SOURCE_DIR = /home/singer/project/learn/OstepCode

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/singer/project/learn/OstepCode/build

# Include any dependencies generated for this target.
include CMakeFiles/p3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/p3.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/p3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/p3.dir/flags.make

CMakeFiles/p3.dir/examples/S5/p3.c.o: CMakeFiles/p3.dir/flags.make
CMakeFiles/p3.dir/examples/S5/p3.c.o: /home/singer/project/learn/OstepCode/examples/S5/p3.c
CMakeFiles/p3.dir/examples/S5/p3.c.o: CMakeFiles/p3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/singer/project/learn/OstepCode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/p3.dir/examples/S5/p3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/p3.dir/examples/S5/p3.c.o -MF CMakeFiles/p3.dir/examples/S5/p3.c.o.d -o CMakeFiles/p3.dir/examples/S5/p3.c.o -c /home/singer/project/learn/OstepCode/examples/S5/p3.c

CMakeFiles/p3.dir/examples/S5/p3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/p3.dir/examples/S5/p3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/singer/project/learn/OstepCode/examples/S5/p3.c > CMakeFiles/p3.dir/examples/S5/p3.c.i

CMakeFiles/p3.dir/examples/S5/p3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/p3.dir/examples/S5/p3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/singer/project/learn/OstepCode/examples/S5/p3.c -o CMakeFiles/p3.dir/examples/S5/p3.c.s

# Object files for target p3
p3_OBJECTS = \
"CMakeFiles/p3.dir/examples/S5/p3.c.o"

# External object files for target p3
p3_EXTERNAL_OBJECTS =

p3: CMakeFiles/p3.dir/examples/S5/p3.c.o
p3: CMakeFiles/p3.dir/build.make
p3: CMakeFiles/p3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/singer/project/learn/OstepCode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable p3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/p3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/p3.dir/build: p3
.PHONY : CMakeFiles/p3.dir/build

CMakeFiles/p3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/p3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/p3.dir/clean

CMakeFiles/p3.dir/depend:
	cd /home/singer/project/learn/OstepCode/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/singer/project/learn/OstepCode /home/singer/project/learn/OstepCode /home/singer/project/learn/OstepCode/build /home/singer/project/learn/OstepCode/build /home/singer/project/learn/OstepCode/build/CMakeFiles/p3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/p3.dir/depend

