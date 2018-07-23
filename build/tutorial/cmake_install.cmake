# Install script for directory: /home/predmach/visp-ws/visp/tutorial

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/predmach/visp-ws/visp/build/tutorial/bridge/opencv/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/calibration/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/computer-vision/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/grabber/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/detection/barcode/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/detection/face/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/detection/matching/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/detection/object/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/detection/tag/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/image/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/imgproc/autothreshold/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/imgproc/brightness/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/imgproc/connected-components/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/imgproc/contour/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/imgproc/contrast-sharpening/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/imgproc/count-coins/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/imgproc/flood-fill/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/robot/pioneer/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/robot/mbot/raspberry/visp/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/simulator/image/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/trace/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/blob/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/keypoint/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/model-based/generic/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/model-based/generic-apriltag/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/model-based/generic-rgbd/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/model-based/generic-stereo/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/model-based/old/edges/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/model-based/old/generic/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/model-based/old/hybrid/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/model-based/old/keypoint/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/model-based/old/stereo-deprecated/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/template-tracker/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/tracking/moving-edges/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/visual-servo/ibvs/cmake_install.cmake")

endif()

