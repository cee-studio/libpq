# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/lucasmull/Trabalho/libpq

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lucasmull/Trabalho/libpq

# Include any dependencies generated for this target.
include CMakeFiles/testlibpq2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testlibpq2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testlibpq2.dir/flags.make

CMakeFiles/testlibpq2.dir/testlibpq2.c.o: CMakeFiles/testlibpq2.dir/flags.make
CMakeFiles/testlibpq2.dir/testlibpq2.c.o: testlibpq2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucasmull/Trabalho/libpq/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testlibpq2.dir/testlibpq2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testlibpq2.dir/testlibpq2.c.o   -c /home/lucasmull/Trabalho/libpq/testlibpq2.c

CMakeFiles/testlibpq2.dir/testlibpq2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testlibpq2.dir/testlibpq2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lucasmull/Trabalho/libpq/testlibpq2.c > CMakeFiles/testlibpq2.dir/testlibpq2.c.i

CMakeFiles/testlibpq2.dir/testlibpq2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testlibpq2.dir/testlibpq2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lucasmull/Trabalho/libpq/testlibpq2.c -o CMakeFiles/testlibpq2.dir/testlibpq2.c.s

# Object files for target testlibpq2
testlibpq2_OBJECTS = \
"CMakeFiles/testlibpq2.dir/testlibpq2.c.o"

# External object files for target testlibpq2
testlibpq2_EXTERNAL_OBJECTS =

testlibpq2: CMakeFiles/testlibpq2.dir/testlibpq2.c.o
testlibpq2: CMakeFiles/testlibpq2.dir/build.make
testlibpq2: libpq/libpq.a
testlibpq2: CMakeFiles/testlibpq2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lucasmull/Trabalho/libpq/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testlibpq2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testlibpq2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testlibpq2.dir/build: testlibpq2

.PHONY : CMakeFiles/testlibpq2.dir/build

CMakeFiles/testlibpq2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testlibpq2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testlibpq2.dir/clean

CMakeFiles/testlibpq2.dir/depend:
	cd /home/lucasmull/Trabalho/libpq && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lucasmull/Trabalho/libpq /home/lucasmull/Trabalho/libpq /home/lucasmull/Trabalho/libpq /home/lucasmull/Trabalho/libpq /home/lucasmull/Trabalho/libpq/CMakeFiles/testlibpq2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testlibpq2.dir/depend
