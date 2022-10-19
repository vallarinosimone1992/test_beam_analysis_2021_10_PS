# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/build

# Include any dependencies generated for this target.
include CMakeFiles/ana.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ana.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ana.dir/flags.make

CMakeFiles/ana.dir/plugin/analysis.cxx.o: CMakeFiles/ana.dir/flags.make
CMakeFiles/ana.dir/plugin/analysis.cxx.o: ../plugin/analysis.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ana.dir/plugin/analysis.cxx.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ana.dir/plugin/analysis.cxx.o -c /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/plugin/analysis.cxx

CMakeFiles/ana.dir/plugin/analysis.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ana.dir/plugin/analysis.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/plugin/analysis.cxx > CMakeFiles/ana.dir/plugin/analysis.cxx.i

CMakeFiles/ana.dir/plugin/analysis.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ana.dir/plugin/analysis.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/plugin/analysis.cxx -o CMakeFiles/ana.dir/plugin/analysis.cxx.s

# Object files for target ana
ana_OBJECTS = \
"CMakeFiles/ana.dir/plugin/analysis.cxx.o"

# External object files for target ana
ana_EXTERNAL_OBJECTS =

ana: CMakeFiles/ana.dir/plugin/analysis.cxx.o
ana: CMakeFiles/ana.dir/build.make
ana: libdRICH_lib.a
ana: /opt/root-cern/lib/libCore.so
ana: /opt/root-cern/lib/libImt.so
ana: /opt/root-cern/lib/libRIO.so
ana: /opt/root-cern/lib/libNet.so
ana: /opt/root-cern/lib/libHist.so
ana: /opt/root-cern/lib/libGraf.so
ana: /opt/root-cern/lib/libGraf3d.so
ana: /opt/root-cern/lib/libGpad.so
ana: /opt/root-cern/lib/libROOTDataFrame.so
ana: /opt/root-cern/lib/libTree.so
ana: /opt/root-cern/lib/libTreePlayer.so
ana: /opt/root-cern/lib/libRint.so
ana: /opt/root-cern/lib/libPostscript.so
ana: /opt/root-cern/lib/libMatrix.so
ana: /opt/root-cern/lib/libPhysics.so
ana: /opt/root-cern/lib/libMathCore.so
ana: /opt/root-cern/lib/libThread.so
ana: /opt/root-cern/lib/libMultiProc.so
ana: /opt/root-cern/lib/libROOTVecOps.so
ana: CMakeFiles/ana.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ana"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ana.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ana.dir/build: ana

.PHONY : CMakeFiles/ana.dir/build

CMakeFiles/ana.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ana.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ana.dir/clean

CMakeFiles/ana.dir/depend:
	cd /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/build /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/build /data01/lab/dRICH_ana/dRICH_prototype_analysis/sw/build/CMakeFiles/ana.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ana.dir/depend

