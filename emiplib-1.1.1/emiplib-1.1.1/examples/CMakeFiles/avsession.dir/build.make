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
include CMakeFiles/avsession.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/avsession.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/avsession.dir/flags.make

CMakeFiles/avsession.dir/avsession.o: CMakeFiles/avsession.dir/flags.make
CMakeFiles/avsession.dir/avsession.o: avsession.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/avsession.dir/avsession.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/avsession.dir/avsession.o -c /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/avsession.cpp

CMakeFiles/avsession.dir/avsession.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avsession.dir/avsession.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/avsession.cpp > CMakeFiles/avsession.dir/avsession.i

CMakeFiles/avsession.dir/avsession.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avsession.dir/avsession.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/avsession.cpp -o CMakeFiles/avsession.dir/avsession.s

CMakeFiles/avsession.dir/avsession.o.requires:
.PHONY : CMakeFiles/avsession.dir/avsession.o.requires

CMakeFiles/avsession.dir/avsession.o.provides: CMakeFiles/avsession.dir/avsession.o.requires
	$(MAKE) -f CMakeFiles/avsession.dir/build.make CMakeFiles/avsession.dir/avsession.o.provides.build
.PHONY : CMakeFiles/avsession.dir/avsession.o.provides

CMakeFiles/avsession.dir/avsession.o.provides.build: CMakeFiles/avsession.dir/avsession.o

# Object files for target avsession
avsession_OBJECTS = \
"CMakeFiles/avsession.dir/avsession.o"

# External object files for target avsession
avsession_EXTERNAL_OBJECTS =

avsession: CMakeFiles/avsession.dir/avsession.o
avsession: CMakeFiles/avsession.dir/build.make
avsession: CMakeFiles/avsession.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable avsession"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/avsession.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/avsession.dir/build: avsession
.PHONY : CMakeFiles/avsession.dir/build

CMakeFiles/avsession.dir/requires: CMakeFiles/avsession.dir/avsession.o.requires
.PHONY : CMakeFiles/avsession.dir/requires

CMakeFiles/avsession.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/avsession.dir/cmake_clean.cmake
.PHONY : CMakeFiles/avsession.dir/clean

CMakeFiles/avsession.dir/depend:
	cd /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/CMakeFiles/avsession.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/avsession.dir/depend

