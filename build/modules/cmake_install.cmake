# Install script for directory: /home/predmach/visp-ws/visp/modules

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
  include("/home/predmach/visp-ws/visp/build/modules/ar/.ar/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/core/.core/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/detection/.detection/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/gui/.gui/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/imgproc/.imgproc/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/io/.io/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/java/.java/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/robot/.robot/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/sensor/.sensor/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/blob/.blob/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/klt/.klt/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/mbt/.mbt/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/me/.me/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/tt/.tt/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/tt_mi/.tt_mi/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/vision/.vision/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/visual_features/.visual_features/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/vs/.vs/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/core/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/gui/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/imgproc/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/io/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/java_bindings_generator/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/klt/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/me/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/sensor/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/ar/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/blob/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/robot/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/visual_features/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/vs/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/vision/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/detection/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/mbt/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/tt/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/tt_mi/cmake_install.cmake")

endif()

