# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src"

# Include any dependencies generated for this target.
include CMakeFiles/Insect_Sim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Insect_Sim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Insect_Sim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Insect_Sim.dir/flags.make

CMakeFiles/Insect_Sim.dir/main.cpp.o: CMakeFiles/Insect_Sim.dir/flags.make
CMakeFiles/Insect_Sim.dir/main.cpp.o: main.cpp
CMakeFiles/Insect_Sim.dir/main.cpp.o: CMakeFiles/Insect_Sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Insect_Sim.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Insect_Sim.dir/main.cpp.o -MF CMakeFiles/Insect_Sim.dir/main.cpp.o.d -o CMakeFiles/Insect_Sim.dir/main.cpp.o -c "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/main.cpp"

CMakeFiles/Insect_Sim.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Insect_Sim.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/main.cpp" > CMakeFiles/Insect_Sim.dir/main.cpp.i

CMakeFiles/Insect_Sim.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Insect_Sim.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/main.cpp" -o CMakeFiles/Insect_Sim.dir/main.cpp.s

CMakeFiles/Insect_Sim.dir/application.cpp.o: CMakeFiles/Insect_Sim.dir/flags.make
CMakeFiles/Insect_Sim.dir/application.cpp.o: application.cpp
CMakeFiles/Insect_Sim.dir/application.cpp.o: CMakeFiles/Insect_Sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Insect_Sim.dir/application.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Insect_Sim.dir/application.cpp.o -MF CMakeFiles/Insect_Sim.dir/application.cpp.o.d -o CMakeFiles/Insect_Sim.dir/application.cpp.o -c "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/application.cpp"

CMakeFiles/Insect_Sim.dir/application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Insect_Sim.dir/application.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/application.cpp" > CMakeFiles/Insect_Sim.dir/application.cpp.i

CMakeFiles/Insect_Sim.dir/application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Insect_Sim.dir/application.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/application.cpp" -o CMakeFiles/Insect_Sim.dir/application.cpp.s

CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.o: CMakeFiles/Insect_Sim.dir/flags.make
CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.o: initialDisplay.cpp
CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.o: CMakeFiles/Insect_Sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.o -MF CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.o.d -o CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.o -c "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/initialDisplay.cpp"

CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/initialDisplay.cpp" > CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.i

CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/initialDisplay.cpp" -o CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.s

# Object files for target Insect_Sim
Insect_Sim_OBJECTS = \
"CMakeFiles/Insect_Sim.dir/main.cpp.o" \
"CMakeFiles/Insect_Sim.dir/application.cpp.o" \
"CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.o"

# External object files for target Insect_Sim
Insect_Sim_EXTERNAL_OBJECTS =

Insect_Sim: CMakeFiles/Insect_Sim.dir/main.cpp.o
Insect_Sim: CMakeFiles/Insect_Sim.dir/application.cpp.o
Insect_Sim: CMakeFiles/Insect_Sim.dir/initialDisplay.cpp.o
Insect_Sim: CMakeFiles/Insect_Sim.dir/build.make
Insect_Sim: libinsect_lib.a
Insect_Sim: _deps/sfml-build/lib/libsfml-graphics.2.5.1.dylib
Insect_Sim: _deps/sfml-build/lib/libsfml-window.2.5.1.dylib
Insect_Sim: _deps/sfml-build/lib/libsfml-system.2.5.1.dylib
Insect_Sim: CMakeFiles/Insect_Sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Insect_Sim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Insect_Sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Insect_Sim.dir/build: Insect_Sim
.PHONY : CMakeFiles/Insect_Sim.dir/build

CMakeFiles/Insect_Sim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Insect_Sim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Insect_Sim.dir/clean

CMakeFiles/Insect_Sim.dir/depend:
	cd "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src" "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src" "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src" "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src" "/Users/jirehchen/Documents/Uni/2022 S2/FIT3162_Project/Project/fit3161-insect-simulations/src/CMakeFiles/Insect_Sim.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Insect_Sim.dir/depend

