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
include modules/core/CMakeFiles/testTranslationVector.dir/depend.make

# Include the progress variables for this target.
include modules/core/CMakeFiles/testTranslationVector.dir/progress.make

# Include the compile flags for this target's objects.
include modules/core/CMakeFiles/testTranslationVector.dir/flags.make

modules/core/CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.o: modules/core/CMakeFiles/testTranslationVector.dir/flags.make
modules/core/CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.o: ../modules/core/test/math/testTranslationVector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/predmach/visp-ws/visp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/core/CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.o"
	cd /home/predmach/visp-ws/visp/build/modules/core && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.o -c /home/predmach/visp-ws/visp/modules/core/test/math/testTranslationVector.cpp

modules/core/CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.i"
	cd /home/predmach/visp-ws/visp/build/modules/core && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/predmach/visp-ws/visp/modules/core/test/math/testTranslationVector.cpp > CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.i

modules/core/CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.s"
	cd /home/predmach/visp-ws/visp/build/modules/core && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/predmach/visp-ws/visp/modules/core/test/math/testTranslationVector.cpp -o CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.s

# Object files for target testTranslationVector
testTranslationVector_OBJECTS = \
"CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.o"

# External object files for target testTranslationVector
testTranslationVector_EXTERNAL_OBJECTS =

modules/core/testTranslationVector: modules/core/CMakeFiles/testTranslationVector.dir/test/math/testTranslationVector.cpp.o
modules/core/testTranslationVector: modules/core/CMakeFiles/testTranslationVector.dir/build.make
modules/core/testTranslationVector: lib/libvisp_io.so.3.2.0
modules/core/testTranslationVector: lib/libvisp_gui.so.3.2.0
modules/core/testTranslationVector: lib/libvisp_core.so.3.2.0
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libm.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libnsl.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libjpeg.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libpng.so
modules/core/testTranslationVector: /usr/local/lib/libopencv_calib3d.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_core.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_dnn.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_features2d.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_flann.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_highgui.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_imgcodecs.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_imgproc.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_ml.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_objdetect.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_photo.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_shape.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_stitching.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_superres.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_video.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_videoio.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_videostab.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_aruco.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_bgsegm.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_bioinspired.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_ccalib.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_datasets.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_dpm.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_face.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_freetype.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_fuzzy.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_hfs.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_img_hash.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_line_descriptor.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_optflow.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_plot.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_reg.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_rgbd.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_saliency.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_stereo.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_structured_light.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_surface_matching.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_text.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_tracking.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_xfeatures2d.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_ximgproc.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_xobjdetect.so.3.4.2
modules/core/testTranslationVector: /usr/local/lib/libopencv_xphoto.so.3.4.2
modules/core/testTranslationVector: /usr/lib/liblapack.so
modules/core/testTranslationVector: /usr/lib/libblas.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libxml2.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libpthread.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libz.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libSM.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libICE.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libX11.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libXext.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libm.so
modules/core/testTranslationVector: /usr/lib/x86_64-linux-gnu/libnsl.so
modules/core/testTranslationVector: modules/core/CMakeFiles/testTranslationVector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/predmach/visp-ws/visp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testTranslationVector"
	cd /home/predmach/visp-ws/visp/build/modules/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testTranslationVector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/core/CMakeFiles/testTranslationVector.dir/build: modules/core/testTranslationVector

.PHONY : modules/core/CMakeFiles/testTranslationVector.dir/build

modules/core/CMakeFiles/testTranslationVector.dir/clean:
	cd /home/predmach/visp-ws/visp/build/modules/core && $(CMAKE_COMMAND) -P CMakeFiles/testTranslationVector.dir/cmake_clean.cmake
.PHONY : modules/core/CMakeFiles/testTranslationVector.dir/clean

modules/core/CMakeFiles/testTranslationVector.dir/depend:
	cd /home/predmach/visp-ws/visp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/predmach/visp-ws/visp /home/predmach/visp-ws/visp/modules/core /home/predmach/visp-ws/visp/build /home/predmach/visp-ws/visp/build/modules/core /home/predmach/visp-ws/visp/build/modules/core/CMakeFiles/testTranslationVector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/core/CMakeFiles/testTranslationVector.dir/depend

