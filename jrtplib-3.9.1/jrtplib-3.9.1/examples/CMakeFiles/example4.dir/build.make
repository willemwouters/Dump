# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Applications/CMake 2.8-12.app/Contents/bin/cmake"

# The command to remove a file.
RM = "/Applications/CMake 2.8-12.app/Contents/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "/Applications/CMake 2.8-12.app/Contents/bin/ccmake"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples

# Include any dependencies generated for this target.
include CMakeFiles/example4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/example4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example4.dir/flags.make

CMakeFiles/example4.dir/example4.o: CMakeFiles/example4.dir/flags.make
CMakeFiles/example4.dir/example4.o: example4.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/example4.dir/example4.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/example4.dir/example4.o -c /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples/example4.cpp

CMakeFiles/example4.dir/example4.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example4.dir/example4.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples/example4.cpp > CMakeFiles/example4.dir/example4.i

CMakeFiles/example4.dir/example4.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example4.dir/example4.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples/example4.cpp -o CMakeFiles/example4.dir/example4.s

CMakeFiles/example4.dir/example4.o.requires:
.PHONY : CMakeFiles/example4.dir/example4.o.requires

CMakeFiles/example4.dir/example4.o.provides: CMakeFiles/example4.dir/example4.o.requires
	$(MAKE) -f CMakeFiles/example4.dir/build.make CMakeFiles/example4.dir/example4.o.provides.build
.PHONY : CMakeFiles/example4.dir/example4.o.provides

CMakeFiles/example4.dir/example4.o.provides.build: CMakeFiles/example4.dir/example4.o

# Object files for target example4
example4_OBJECTS = \
"CMakeFiles/example4.dir/example4.o"

# External object files for target example4
example4_EXTERNAL_OBJECTS =

example4: CMakeFiles/example4.dir/example4.o
example4: CMakeFiles/example4.dir/build.make
example4: CMakeFiles/example4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable example4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example4.dir/build: example4
.PHONY : CMakeFiles/example4.dir/build

CMakeFiles/example4.dir/requires: CMakeFiles/example4.dir/example4.o.requires
.PHONY : CMakeFiles/example4.dir/requires

CMakeFiles/example4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example4.dir/clean

CMakeFiles/example4.dir/depend:
	cd /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/examples/CMakeFiles/example4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/example4.dir/depend

