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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yuhsh/ProgramCode/SlamLearning/slam2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuhsh/ProgramCode/SlamLearning/slam2/bin

# Include any dependencies generated for this target.
include src/CMakeFiles/slamBase.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/slamBase.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/slamBase.dir/flags.make

src/CMakeFiles/slamBase.dir/slamBase.cpp.o: src/CMakeFiles/slamBase.dir/flags.make
src/CMakeFiles/slamBase.dir/slamBase.cpp.o: ../src/slamBase.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhsh/ProgramCode/SlamLearning/slam2/bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/slamBase.dir/slamBase.cpp.o"
	cd /home/yuhsh/ProgramCode/SlamLearning/slam2/bin/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/slamBase.dir/slamBase.cpp.o -c /home/yuhsh/ProgramCode/SlamLearning/slam2/src/slamBase.cpp

src/CMakeFiles/slamBase.dir/slamBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slamBase.dir/slamBase.cpp.i"
	cd /home/yuhsh/ProgramCode/SlamLearning/slam2/bin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhsh/ProgramCode/SlamLearning/slam2/src/slamBase.cpp > CMakeFiles/slamBase.dir/slamBase.cpp.i

src/CMakeFiles/slamBase.dir/slamBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slamBase.dir/slamBase.cpp.s"
	cd /home/yuhsh/ProgramCode/SlamLearning/slam2/bin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhsh/ProgramCode/SlamLearning/slam2/src/slamBase.cpp -o CMakeFiles/slamBase.dir/slamBase.cpp.s

src/CMakeFiles/slamBase.dir/slamBase.cpp.o.requires:
.PHONY : src/CMakeFiles/slamBase.dir/slamBase.cpp.o.requires

src/CMakeFiles/slamBase.dir/slamBase.cpp.o.provides: src/CMakeFiles/slamBase.dir/slamBase.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/slamBase.dir/build.make src/CMakeFiles/slamBase.dir/slamBase.cpp.o.provides.build
.PHONY : src/CMakeFiles/slamBase.dir/slamBase.cpp.o.provides

src/CMakeFiles/slamBase.dir/slamBase.cpp.o.provides.build: src/CMakeFiles/slamBase.dir/slamBase.cpp.o

# Object files for target slamBase
slamBase_OBJECTS = \
"CMakeFiles/slamBase.dir/slamBase.cpp.o"

# External object files for target slamBase
slamBase_EXTERNAL_OBJECTS =

../lib/libslamBase.a: src/CMakeFiles/slamBase.dir/slamBase.cpp.o
../lib/libslamBase.a: src/CMakeFiles/slamBase.dir/build.make
../lib/libslamBase.a: src/CMakeFiles/slamBase.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../../lib/libslamBase.a"
	cd /home/yuhsh/ProgramCode/SlamLearning/slam2/bin/src && $(CMAKE_COMMAND) -P CMakeFiles/slamBase.dir/cmake_clean_target.cmake
	cd /home/yuhsh/ProgramCode/SlamLearning/slam2/bin/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/slamBase.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/slamBase.dir/build: ../lib/libslamBase.a
.PHONY : src/CMakeFiles/slamBase.dir/build

src/CMakeFiles/slamBase.dir/requires: src/CMakeFiles/slamBase.dir/slamBase.cpp.o.requires
.PHONY : src/CMakeFiles/slamBase.dir/requires

src/CMakeFiles/slamBase.dir/clean:
	cd /home/yuhsh/ProgramCode/SlamLearning/slam2/bin/src && $(CMAKE_COMMAND) -P CMakeFiles/slamBase.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/slamBase.dir/clean

src/CMakeFiles/slamBase.dir/depend:
	cd /home/yuhsh/ProgramCode/SlamLearning/slam2/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhsh/ProgramCode/SlamLearning/slam2 /home/yuhsh/ProgramCode/SlamLearning/slam2/src /home/yuhsh/ProgramCode/SlamLearning/slam2/bin /home/yuhsh/ProgramCode/SlamLearning/slam2/bin/src /home/yuhsh/ProgramCode/SlamLearning/slam2/bin/src/CMakeFiles/slamBase.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/slamBase.dir/depend

