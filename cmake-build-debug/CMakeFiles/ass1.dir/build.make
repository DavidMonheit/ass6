# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Nitzan\Desktop\DN

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Nitzan\Desktop\DN\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ass1.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/ass1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ass1.dir/flags.make

CMakeFiles/ass1.dir/main.cpp.obj: CMakeFiles/ass1.dir/flags.make
CMakeFiles/ass1.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Nitzan\Desktop\DN\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ass1.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ass1.dir\main.cpp.obj -c C:\Users\Nitzan\Desktop\DN\main.cpp

CMakeFiles/ass1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ass1.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Nitzan\Desktop\DN\main.cpp > CMakeFiles\ass1.dir\main.cpp.i

CMakeFiles/ass1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ass1.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Nitzan\Desktop\DN\main.cpp -o CMakeFiles\ass1.dir\main.cpp.s

CMakeFiles/ass1.dir/anomaly_detection_util.cpp.obj: CMakeFiles/ass1.dir/flags.make
CMakeFiles/ass1.dir/anomaly_detection_util.cpp.obj: ../anomaly_detection_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Nitzan\Desktop\DN\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ass1.dir/anomaly_detection_util.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ass1.dir\anomaly_detection_util.cpp.obj -c C:\Users\Nitzan\Desktop\DN\anomaly_detection_util.cpp

CMakeFiles/ass1.dir/anomaly_detection_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ass1.dir/anomaly_detection_util.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Nitzan\Desktop\DN\anomaly_detection_util.cpp > CMakeFiles\ass1.dir\anomaly_detection_util.cpp.i

CMakeFiles/ass1.dir/anomaly_detection_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ass1.dir/anomaly_detection_util.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Nitzan\Desktop\DN\anomaly_detection_util.cpp -o CMakeFiles\ass1.dir\anomaly_detection_util.cpp.s

# Object files for target ass1
ass1_OBJECTS = \
"CMakeFiles/ass1.dir/main.cpp.obj" \
"CMakeFiles/ass1.dir/anomaly_detection_util.cpp.obj"

# External object files for target ass1
ass1_EXTERNAL_OBJECTS =

ass1.exe: CMakeFiles/ass1.dir/main.cpp.obj
ass1.exe: CMakeFiles/ass1.dir/anomaly_detection_util.cpp.obj
ass1.exe: CMakeFiles/ass1.dir/build.make
ass1.exe: CMakeFiles/ass1.dir/linklibs.rsp
ass1.exe: CMakeFiles/ass1.dir/objects1.rsp
ass1.exe: CMakeFiles/ass1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Nitzan\Desktop\DN\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ass1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ass1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ass1.dir/build: ass1.exe
.PHONY : CMakeFiles/ass1.dir/build

CMakeFiles/ass1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ass1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ass1.dir/clean

CMakeFiles/ass1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Nitzan\Desktop\DN C:\Users\Nitzan\Desktop\DN C:\Users\Nitzan\Desktop\DN\cmake-build-debug C:\Users\Nitzan\Desktop\DN\cmake-build-debug C:\Users\Nitzan\Desktop\DN\cmake-build-debug\CMakeFiles\ass1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ass1.dir/depend

