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
CMAKE_SOURCE_DIR = /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples

# Include any dependencies generated for this target.
include CMakeFiles/pushtotalk2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pushtotalk2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pushtotalk2.dir/flags.make

CMakeFiles/pushtotalk2.dir/pushtotalk2.o: CMakeFiles/pushtotalk2.dir/flags.make
CMakeFiles/pushtotalk2.dir/pushtotalk2.o: pushtotalk2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/pushtotalk2.dir/pushtotalk2.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pushtotalk2.dir/pushtotalk2.o -c /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/pushtotalk2.cpp

CMakeFiles/pushtotalk2.dir/pushtotalk2.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pushtotalk2.dir/pushtotalk2.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/pushtotalk2.cpp > CMakeFiles/pushtotalk2.dir/pushtotalk2.i

CMakeFiles/pushtotalk2.dir/pushtotalk2.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pushtotalk2.dir/pushtotalk2.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/pushtotalk2.cpp -o CMakeFiles/pushtotalk2.dir/pushtotalk2.s

CMakeFiles/pushtotalk2.dir/pushtotalk2.o.requires:
.PHONY : CMakeFiles/pushtotalk2.dir/pushtotalk2.o.requires

CMakeFiles/pushtotalk2.dir/pushtotalk2.o.provides: CMakeFiles/pushtotalk2.dir/pushtotalk2.o.requires
	$(MAKE) -f CMakeFiles/pushtotalk2.dir/build.make CMakeFiles/pushtotalk2.dir/pushtotalk2.o.provides.build
.PHONY : CMakeFiles/pushtotalk2.dir/pushtotalk2.o.provides

CMakeFiles/pushtotalk2.dir/pushtotalk2.o.provides.build: CMakeFiles/pushtotalk2.dir/pushtotalk2.o

# Object files for target pushtotalk2
pushtotalk2_OBJECTS = \
"CMakeFiles/pushtotalk2.dir/pushtotalk2.o"

# External object files for target pushtotalk2
pushtotalk2_EXTERNAL_OBJECTS =

pushtotalk2: CMakeFiles/pushtotalk2.dir/pushtotalk2.o
pushtotalk2: CMakeFiles/pushtotalk2.dir/build.make
pushtotalk2: CMakeFiles/pushtotalk2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable pushtotalk2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pushtotalk2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pushtotalk2.dir/build: pushtotalk2
.PHONY : CMakeFiles/pushtotalk2.dir/build

CMakeFiles/pushtotalk2.dir/requires: CMakeFiles/pushtotalk2.dir/pushtotalk2.o.requires
.PHONY : CMakeFiles/pushtotalk2.dir/requires

CMakeFiles/pushtotalk2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pushtotalk2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pushtotalk2.dir/clean

CMakeFiles/pushtotalk2.dir/depend:
	cd /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/CMakeFiles/pushtotalk2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pushtotalk2.dir/depend

