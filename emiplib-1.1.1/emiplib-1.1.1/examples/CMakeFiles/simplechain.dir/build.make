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
include CMakeFiles/simplechain.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simplechain.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simplechain.dir/flags.make

CMakeFiles/simplechain.dir/simplechain.o: CMakeFiles/simplechain.dir/flags.make
CMakeFiles/simplechain.dir/simplechain.o: simplechain.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/simplechain.dir/simplechain.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/simplechain.dir/simplechain.o -c /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/simplechain.cpp

CMakeFiles/simplechain.dir/simplechain.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simplechain.dir/simplechain.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/simplechain.cpp > CMakeFiles/simplechain.dir/simplechain.i

CMakeFiles/simplechain.dir/simplechain.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simplechain.dir/simplechain.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/simplechain.cpp -o CMakeFiles/simplechain.dir/simplechain.s

CMakeFiles/simplechain.dir/simplechain.o.requires:
.PHONY : CMakeFiles/simplechain.dir/simplechain.o.requires

CMakeFiles/simplechain.dir/simplechain.o.provides: CMakeFiles/simplechain.dir/simplechain.o.requires
	$(MAKE) -f CMakeFiles/simplechain.dir/build.make CMakeFiles/simplechain.dir/simplechain.o.provides.build
.PHONY : CMakeFiles/simplechain.dir/simplechain.o.provides

CMakeFiles/simplechain.dir/simplechain.o.provides.build: CMakeFiles/simplechain.dir/simplechain.o

# Object files for target simplechain
simplechain_OBJECTS = \
"CMakeFiles/simplechain.dir/simplechain.o"

# External object files for target simplechain
simplechain_EXTERNAL_OBJECTS =

simplechain: CMakeFiles/simplechain.dir/simplechain.o
simplechain: CMakeFiles/simplechain.dir/build.make
simplechain: CMakeFiles/simplechain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable simplechain"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simplechain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simplechain.dir/build: simplechain
.PHONY : CMakeFiles/simplechain.dir/build

CMakeFiles/simplechain.dir/requires: CMakeFiles/simplechain.dir/simplechain.o.requires
.PHONY : CMakeFiles/simplechain.dir/requires

CMakeFiles/simplechain.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simplechain.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simplechain.dir/clean

CMakeFiles/simplechain.dir/depend:
	cd /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/examples/CMakeFiles/simplechain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simplechain.dir/depend

