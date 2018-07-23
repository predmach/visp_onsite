# Install script for directory: /home/predmach/visp-ws/visp/example

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
  include("/home/predmach/visp-ws/visp/build/example/calibration/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/coin-simulator/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/device/display/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/device/framegrabber/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/device/kinect/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/device/laserscanner/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/device/light/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/direct-visual-servoing/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/homography/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/image/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/key-point/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/manual/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/math/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/moments/image/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/moments/points/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/moments/polygon/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/ogre-simulator/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/parse-argv/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/pose-estimation/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/robot-simulator/afma6/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/robot-simulator/camera/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/robot-simulator/viper850/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/servo-afma4/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/servo-afma6/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/servo-biclops/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/servo-franka/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/servo-pioneer/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/servo-ptu46/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/servo-viper650/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/servo-viper850/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/tools/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/tracking/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/video/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/wireframe-simulator/cmake_install.cmake")

endif()

