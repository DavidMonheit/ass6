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
CMAKE_SOURCE_DIR = "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/anomaly_detection_util.h.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/anomaly_detection_util.h.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/anomaly_detection_util.h.dir/flags.make

CMakeFiles/anomaly_detection_util.h.dir/anomaly_detection_util.cpp.obj: CMakeFiles/anomaly_detection_util.h.dir/flags.make
CMakeFiles/anomaly_detection_util.h.dir/anomaly_detection_util.cpp.obj: ../anomaly_detection_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/anomaly_detection_util.h.dir/anomaly_detection_util.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\anomaly_detection_util.h.dir\anomaly_detection_util.cpp.obj -c "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\anomaly_detection_util.cpp"

CMakeFiles/anomaly_detection_util.h.dir/anomaly_detection_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/anomaly_detection_util.h.dir/anomaly_detection_util.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\anomaly_detection_util.cpp" > CMakeFiles\anomaly_detection_util.h.dir\anomaly_detection_util.cpp.i

CMakeFiles/anomaly_detection_util.h.dir/anomaly_detection_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/anomaly_detection_util.h.dir/anomaly_detection_util.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\anomaly_detection_util.cpp" -o CMakeFiles\anomaly_detection_util.h.dir\anomaly_detection_util.cpp.s

CMakeFiles/anomaly_detection_util.h.dir/MainTrain.cpp.obj: CMakeFiles/anomaly_detection_util.h.dir/flags.make
CMakeFiles/anomaly_detection_util.h.dir/MainTrain.cpp.obj: ../MainTrain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/anomaly_detection_util.h.dir/MainTrain.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\anomaly_detection_util.h.dir\MainTrain.cpp.obj -c "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\MainTrain.cpp"

CMakeFiles/anomaly_detection_util.h.dir/MainTrain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/anomaly_detection_util.h.dir/MainTrain.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\MainTrain.cpp" > CMakeFiles\anomaly_detection_util.h.dir\MainTrain.cpp.i

CMakeFiles/anomaly_detection_util.h.dir/MainTrain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/anomaly_detection_util.h.dir/MainTrain.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\MainTrain.cpp" -o CMakeFiles\anomaly_detection_util.h.dir\MainTrain.cpp.s

CMakeFiles/anomaly_detection_util.h.dir/SimpleAnomalyDetector.cpp.obj: CMakeFiles/anomaly_detection_util.h.dir/flags.make
CMakeFiles/anomaly_detection_util.h.dir/SimpleAnomalyDetector.cpp.obj: ../SimpleAnomalyDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/anomaly_detection_util.h.dir/SimpleAnomalyDetector.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\anomaly_detection_util.h.dir\SimpleAnomalyDetector.cpp.obj -c "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\SimpleAnomalyDetector.cpp"

CMakeFiles/anomaly_detection_util.h.dir/SimpleAnomalyDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/anomaly_detection_util.h.dir/SimpleAnomalyDetector.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\SimpleAnomalyDetector.cpp" > CMakeFiles\anomaly_detection_util.h.dir\SimpleAnomalyDetector.cpp.i

CMakeFiles/anomaly_detection_util.h.dir/SimpleAnomalyDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/anomaly_detection_util.h.dir/SimpleAnomalyDetector.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\SimpleAnomalyDetector.cpp" -o CMakeFiles\anomaly_detection_util.h.dir\SimpleAnomalyDetector.cpp.s

CMakeFiles/anomaly_detection_util.h.dir/timeseries.cpp.obj: CMakeFiles/anomaly_detection_util.h.dir/flags.make
CMakeFiles/anomaly_detection_util.h.dir/timeseries.cpp.obj: ../timeseries.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/anomaly_detection_util.h.dir/timeseries.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\anomaly_detection_util.h.dir\timeseries.cpp.obj -c "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\timeseries.cpp"

CMakeFiles/anomaly_detection_util.h.dir/timeseries.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/anomaly_detection_util.h.dir/timeseries.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\timeseries.cpp" > CMakeFiles\anomaly_detection_util.h.dir\timeseries.cpp.i

CMakeFiles/anomaly_detection_util.h.dir/timeseries.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/anomaly_detection_util.h.dir/timeseries.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\timeseries.cpp" -o CMakeFiles\anomaly_detection_util.h.dir\timeseries.cpp.s

# Object files for target anomaly_detection_util.h
anomaly_detection_util_h_OBJECTS = \
"CMakeFiles/anomaly_detection_util.h.dir/anomaly_detection_util.cpp.obj" \
"CMakeFiles/anomaly_detection_util.h.dir/MainTrain.cpp.obj" \
"CMakeFiles/anomaly_detection_util.h.dir/SimpleAnomalyDetector.cpp.obj" \
"CMakeFiles/anomaly_detection_util.h.dir/timeseries.cpp.obj"

# External object files for target anomaly_detection_util.h
anomaly_detection_util_h_EXTERNAL_OBJECTS =

anomaly_detection_util.h.exe: CMakeFiles/anomaly_detection_util.h.dir/anomaly_detection_util.cpp.obj
anomaly_detection_util.h.exe: CMakeFiles/anomaly_detection_util.h.dir/MainTrain.cpp.obj
anomaly_detection_util.h.exe: CMakeFiles/anomaly_detection_util.h.dir/SimpleAnomalyDetector.cpp.obj
anomaly_detection_util.h.exe: CMakeFiles/anomaly_detection_util.h.dir/timeseries.cpp.obj
anomaly_detection_util.h.exe: CMakeFiles/anomaly_detection_util.h.dir/build.make
anomaly_detection_util.h.exe: CMakeFiles/anomaly_detection_util.h.dir/linklibs.rsp
anomaly_detection_util.h.exe: CMakeFiles/anomaly_detection_util.h.dir/objects1.rsp
anomaly_detection_util.h.exe: CMakeFiles/anomaly_detection_util.h.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable anomaly_detection_util.h.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\anomaly_detection_util.h.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/anomaly_detection_util.h.dir/build: anomaly_detection_util.h.exe
.PHONY : CMakeFiles/anomaly_detection_util.h.dir/build

CMakeFiles/anomaly_detection_util.h.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\anomaly_detection_util.h.dir\cmake_clean.cmake
.PHONY : CMakeFiles/anomaly_detection_util.h.dir/clean

CMakeFiles/anomaly_detection_util.h.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS" "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS" "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\cmake-build-debug" "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\cmake-build-debug" "C:\Users\dmmon\Desktop\Computer Science\year 2\Semester 1\Advanced programing 1\AS\cmake-build-debug\CMakeFiles\anomaly_detection_util.h.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/anomaly_detection_util.h.dir/depend

