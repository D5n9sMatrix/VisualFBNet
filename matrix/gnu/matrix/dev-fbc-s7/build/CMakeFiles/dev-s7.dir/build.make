# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/denis/freebasic/dev-s7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/denis/freebasic/dev-s7/build

# Include any dependencies generated for this target.
include CMakeFiles/dev-s7.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dev-s7.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dev-s7.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dev-s7.dir/flags.make

CMakeFiles/dev-s7.dir/dev-s7.cpp.o: CMakeFiles/dev-s7.dir/flags.make
CMakeFiles/dev-s7.dir/dev-s7.cpp.o: ../dev-s7.cpp
CMakeFiles/dev-s7.dir/dev-s7.cpp.o: CMakeFiles/dev-s7.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/denis/freebasic/dev-s7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dev-s7.dir/dev-s7.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dev-s7.dir/dev-s7.cpp.o -MF CMakeFiles/dev-s7.dir/dev-s7.cpp.o.d -o CMakeFiles/dev-s7.dir/dev-s7.cpp.o -c /home/denis/freebasic/dev-s7/dev-s7.cpp

CMakeFiles/dev-s7.dir/dev-s7.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dev-s7.dir/dev-s7.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/denis/freebasic/dev-s7/dev-s7.cpp > CMakeFiles/dev-s7.dir/dev-s7.cpp.i

CMakeFiles/dev-s7.dir/dev-s7.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dev-s7.dir/dev-s7.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/denis/freebasic/dev-s7/dev-s7.cpp -o CMakeFiles/dev-s7.dir/dev-s7.cpp.s

# Object files for target dev-s7
dev__s7_OBJECTS = \
"CMakeFiles/dev-s7.dir/dev-s7.cpp.o"

# External object files for target dev-s7
dev__s7_EXTERNAL_OBJECTS =

libdev-s7.a: CMakeFiles/dev-s7.dir/dev-s7.cpp.o
libdev-s7.a: CMakeFiles/dev-s7.dir/build.make
libdev-s7.a: CMakeFiles/dev-s7.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/denis/freebasic/dev-s7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdev-s7.a"
	$(CMAKE_COMMAND) -P CMakeFiles/dev-s7.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dev-s7.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dev-s7.dir/build: libdev-s7.a
.PHONY : CMakeFiles/dev-s7.dir/build

CMakeFiles/dev-s7.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dev-s7.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dev-s7.dir/clean

CMakeFiles/dev-s7.dir/depend:
	cd /home/denis/freebasic/dev-s7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/denis/freebasic/dev-s7 /home/denis/freebasic/dev-s7 /home/denis/freebasic/dev-s7/build /home/denis/freebasic/dev-s7/build /home/denis/freebasic/dev-s7/build/CMakeFiles/dev-s7.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dev-s7.dir/depend

