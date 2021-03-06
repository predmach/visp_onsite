# Install script for directory: /home/predmach/visp-ws/visp/modules/tracker/mbt

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3" TYPE FILE FILES "/home/predmach/visp-ws/visp/build/include/visp3/visp_mbt.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibsx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so.3.2.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so.3.2"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/home/predmach/visp-ws/visp/build/lib/libvisp_mbt.so.3.2.0"
    "/home/predmach/visp-ws/visp/build/lib/libvisp_mbt.so.3.2"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so.3.2.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so.3.2"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/predmach/visp-ws/visp/build/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/usr/local/lib:"
           NEW_RPATH "/usr/local/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibsx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so"
         RPATH "/usr/local/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES "/home/predmach/visp-ws/visp/build/lib/libvisp_mbt.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so"
         OLD_RPATH "/home/predmach/visp-ws/visp/build/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/usr/local/lib:"
         NEW_RPATH "/usr/local/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_mbt.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbDepthDenseTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbDepthNormalTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbEdgeKltMultiTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbEdgeKltTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbEdgeMultiTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbEdgeTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbGenericTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbHiddenFaces.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbKltMultiTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbKltTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbScanLine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbXmlParser.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtDistanceCircle.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtDistanceCylinder.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtDistanceKltCylinder.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtDistanceKltPoints.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtDistanceLine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtEdgeKltXmlParser.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtFaceDepthDense.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtFaceDepthNormal.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtKltXmlParser.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtMeEllipse.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtMeLine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtPolygon.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtTukeyEstimator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtXmlGenericParser.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/mbt" TYPE FILE OPTIONAL FILES "/home/predmach/visp-ws/visp/modules/tracker/mbt/include/visp3/mbt/vpMbtXmlParser.h")
endif()

