# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/predmach/visp-ws/visp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/predmach/visp-ws/visp/build

# Include any dependencies generated for this target.
include modules/imgproc/CMakeFiles/testConnectedComponents.dir/depend.make

# Include the progress variables for this target.
include modules/imgproc/CMakeFiles/testConnectedComponents.dir/progress.make

# Include the compile flags for this target's objects.
include modules/imgproc/CMakeFiles/testConnectedComponents.dir/flags.make

modules/imgproc/CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.o: modules/imgproc/CMakeFiles/testConnectedComponents.dir/flags.make
modules/imgproc/CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.o: ../modules/imgproc/test/testConnectedComponents.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/predmach/visp-ws/visp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/imgproc/CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.o"
	cd /home/predmach/visp-ws/visp/build/modules/imgproc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.o -c /home/predmach/visp-ws/visp/modules/imgproc/test/testConnectedComponents.cpp

modules/imgproc/CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.i"
	cd /home/predmach/visp-ws/visp/build/modules/imgproc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/predmach/visp-ws/visp/modules/imgproc/test/testConnectedComponents.cpp > CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.i

modules/imgproc/CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.s"
	cd /home/predmach/visp-ws/visp/build/modules/imgproc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/predmach/visp-ws/visp/modules/imgproc/test/testConnectedComponents.cpp -o CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.s

# Object files for target testConnectedComponents
testConnectedComponents_OBJECTS = \
"CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.o"

# External object files for target testConnectedComponents
testConnectedComponents_EXTERNAL_OBJECTS =

modules/imgproc/testConnectedComponents: modules/imgproc/CMakeFiles/testConnectedComponents.dir/test/testConnectedComponents.cpp.o
modules/imgproc/testConnectedComponents: modules/imgproc/CMakeFiles/testConnectedComponents.dir/build.make
modules/imgproc/testConnectedComponents: lib/libvisp_imgproc.so.3.2.0
modules/imgproc/testConnectedComponents: lib/libvisp_io.so.3.2.0
modules/imgproc/testConnectedComponents: lib/libvisp_core.so.3.2.0
modules/imgproc/testConnectedComponents: /usr/lib/x86_64-linux-gnu/libm.so
modules/imgproc/testConnectedComponents: /usr/lib/x86_64-linux-gnu/libnsl.so
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_calib3d.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_core.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_dnn.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_features2d.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_flann.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_highgui.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_imgcodecs.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_imgproc.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_ml.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_objdetect.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_photo.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_shape.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_stitching.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_superres.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_video.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_videoio.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_videostab.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_aruco.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_bgsegm.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_bioinspired.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_ccalib.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_datasets.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_dpm.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_face.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_freetype.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_fuzzy.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_hfs.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_img_hash.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_line_descriptor.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_optflow.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_plot.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_reg.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_rgbd.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_saliency.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_stereo.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_structured_light.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_surface_matching.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_text.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_tracking.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_xfeatures2d.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_ximgproc.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_xobjdetect.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/local/lib/libopencv_xphoto.so.3.4.2
modules/imgproc/testConnectedComponents: /usr/lib/liblapack.so
modules/imgproc/testConnectedComponents: /usr/lib/libblas.so
modules/imgproc/testConnectedComponents: /usr/lib/x86_64-linux-gnu/libxml2.so
modules/imgproc/testConnectedComponents: /usr/lib/x86_64-linux-gnu/libpthread.so
modules/imgproc/testConnectedComponents: /usr/lib/x86_64-linux-gnu/libjpeg.so
modules/imgproc/testConnectedComponents: /usr/lib/x86_64-linux-gnu/libpng.so
modules/imgproc/testConnectedComponents: /usr/lib/x86_64-linux-gnu/libz.so
modules/imgproc/testConnectedComponents: /usr/lib/x86_64-linux-gnu/libm.so
modules/imgproc/testConnectedComponents: /usr/lib/x86_64-linux-gnu/libnsl.so
modules/imgproc/testConnectedComponents: modules/imgproc/CMakeFiles/testConnectedComponents.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/predmach/visp-ws/visp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testConnectedComponents"
	cd /home/predmach/visp-ws/visp/build/modules/imgproc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testConnectedComponents.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/imgproc/CMakeFiles/testConnectedComponents.dir/build: modules/imgproc/testConnectedComponents

.PHONY : modules/imgproc/CMakeFiles/testConnectedComponents.dir/build

modules/imgproc/CMakeFiles/testConnectedComponents.dir/clean:
	cd /home/predmach/visp-ws/visp/build/modules/imgproc && $(CMAKE_COMMAND) -P CMakeFiles/testConnectedComponents.dir/cmake_clean.cmake
.PHONY : modules/imgproc/CMakeFiles/testConnectedComponents.dir/clean

modules/imgproc/CMakeFiles/testConnectedComponents.dir/depend:
	cd /home/predmach/visp-ws/visp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/predmach/visp-ws/visp /home/predmach/visp-ws/visp/modules/imgproc /home/predmach/visp-ws/visp/build /home/predmach/visp-ws/visp/build/modules/imgproc /home/predmach/visp-ws/visp/build/modules/imgproc/CMakeFiles/testConnectedComponents.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/imgproc/CMakeFiles/testConnectedComponents.dir/depend

