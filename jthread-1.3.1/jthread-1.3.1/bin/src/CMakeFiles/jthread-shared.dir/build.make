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
CMAKE_SOURCE_DIR = /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin

# Include any dependencies generated for this target.
include src/CMakeFiles/jthread-shared.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/jthread-shared.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/jthread-shared.dir/flags.make

src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o: src/CMakeFiles/jthread-shared.dir/flags.make
src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o: ../src/pthread/jmutex.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o"
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o -c /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/src/pthread/jmutex.cpp

src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.i"
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/src/pthread/jmutex.cpp > CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.i

src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.s"
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/src/pthread/jmutex.cpp -o CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.s

src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o.requires:
.PHONY : src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o.requires

src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o.provides: src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/jthread-shared.dir/build.make src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o.provides.build
.PHONY : src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o.provides

src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o.provides.build: src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o

src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o: src/CMakeFiles/jthread-shared.dir/flags.make
src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o: ../src/pthread/jthread.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o"
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o -c /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/src/pthread/jthread.cpp

src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.i"
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/src/pthread/jthread.cpp > CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.i

src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.s"
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/src/pthread/jthread.cpp -o CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.s

src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o.requires:
.PHONY : src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o.requires

src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o.provides: src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/jthread-shared.dir/build.make src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o.provides.build
.PHONY : src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o.provides

src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o.provides.build: src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o

# Object files for target jthread-shared
jthread__shared_OBJECTS = \
"CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o" \
"CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o"

# External object files for target jthread-shared
jthread__shared_EXTERNAL_OBJECTS =

src/libjthread.1.3.1.dylib: src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o
src/libjthread.1.3.1.dylib: src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o
src/libjthread.1.3.1.dylib: src/CMakeFiles/jthread-shared.dir/build.make
src/libjthread.1.3.1.dylib: src/CMakeFiles/jthread-shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libjthread.dylib"
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jthread-shared.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src && $(CMAKE_COMMAND) -E cmake_symlink_library libjthread.1.3.1.dylib libjthread.1.3.1.dylib libjthread.dylib

src/libjthread.dylib: src/libjthread.1.3.1.dylib

# Rule to build all files generated by this target.
src/CMakeFiles/jthread-shared.dir/build: src/libjthread.dylib
.PHONY : src/CMakeFiles/jthread-shared.dir/build

src/CMakeFiles/jthread-shared.dir/requires: src/CMakeFiles/jthread-shared.dir/pthread/jmutex.cpp.o.requires
src/CMakeFiles/jthread-shared.dir/requires: src/CMakeFiles/jthread-shared.dir/pthread/jthread.cpp.o.requires
.PHONY : src/CMakeFiles/jthread-shared.dir/requires

src/CMakeFiles/jthread-shared.dir/clean:
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src && $(CMAKE_COMMAND) -P CMakeFiles/jthread-shared.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/jthread-shared.dir/clean

src/CMakeFiles/jthread-shared.dir/depend:
	cd /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1 /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/src /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src /Users/willemwouters/Downloads/jthread-1.3.1/jthread-1.3.1/bin/src/CMakeFiles/jthread-shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/jthread-shared.dir/depend

