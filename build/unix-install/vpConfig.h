/****************************************************************************
 *
 * This file is part of the ViSP software.
 * Copyright (C) 2005 - 2017 by Inria. All rights reserved.
 *
 * This software is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * See the file LICENSE.txt at the root directory of this source
 * distribution for additional information about the GNU GPL.
 *
 * For using ViSP with software that can not be combined with the GNU
 * GPL, please contact Inria about acquiring a ViSP Professional
 * Edition License.
 *
 * See http://visp.inria.fr for more information.
 *
 * This software was developed at:
 * Inria Rennes - Bretagne Atlantique
 * Campus Universitaire de Beaulieu
 * 35042 Rennes Cedex
 * France
 *
 * If you have questions regarding the use of this file, please contact
 * Inria at visp@inria.fr
 *
 * This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
 * WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 * Description:
 * ViSP configuration.
 *
 * Authors:
 * Fabien Spindler
 *
 *****************************************************************************/

#ifndef vpConfig_h
#define vpConfig_h

// To get access to EXIT_SUCCESS and EXIT_FAILURE
#include <cstdlib>

#if defined _MSC_VER && _MSC_VER >= 1200
  #pragma warning( disable: 4100 4127 4251 4275 4351 4514 4668 4710 4820 )
  #if _MSC_VER >= 1400 // 1400 = MSVC 8 2005
    #pragma warning( disable: 4548 )
  #endif
  #if _MSC_VER > 1500 // 1500 = MSVC 9 2008
    #pragma warning( disable: 4986 )
  #endif
  #ifdef WINRT
    #pragma warning(disable:4447)
  #endif

  // 4100 : undocumented ("unreferenced formal parameter")
  // 4127 : conditional expression is constant
  // 4251 : 'identifier' : class 'type' needs to have dll-interface to be used by clients of class 'type2', ie. disable warnings related to inline functions
  // 4275 : non – DLL-interface classkey 'identifier' used as base for DLL-interface classkey 'identifier'
  // 4351 : new behavior: elements of array will be default initialized
  // 4447 : Disable warning 'main' signature found without threading model
  // 4514 : 'function' : unreferenced inline function has been removed
  // 4548 : expression before comma has no effect
  // 4668 : 'symbol' is not defined as a preprocessor macro, replacing with '0' for 'directives'
  // 4710 : 'function' : function not inlined
  // 4820 : 'bytes' bytes padding added after construct 'member_name'
  // 4986 : undocumented

  #ifndef NOMINMAX
    #define NOMINMAX
  #endif
#endif

#if defined _MSC_VER && (_MSC_VER == 1500)
// Visual Studio 9 2008 specific stuff
// Fix running 64-bit OpenMP Debug Builds compiled with Visual Studio 2008 SP1
// See discussion on https://gforge.inria.fr/forum/message.php?msg_id=149273&group_id=397
// and the proposed fix: http://www.johanseland.com/2010/08/running-64-bit-openmp-debug-builds.html
#  define _BIND_TO_CURRENT_OPENMP_VERSION 1
#endif

#if defined(__MINGW__) || defined(__MINGW32__) || defined(__MINGW64__)
// Work arround to fix build issues that may occur with Mingw:
// error: 'DBL_EPSILON' was not declared in this scope
// error: 'FLT_EPSILON' was not declared in this scope

#  include <float.h>

#  ifndef DBL_EPSILON
#    define DBL_EPSILON __DBL_EPSILON__
#  endif
#  ifndef FLT_EPSILON
#    define FLT_EPSILON __FLT_EPSILON__
#  endif
#endif

#include <visp3/visp_modules.h>

// ViSP major version.
#define VISP_VERSION_MAJOR 3

// ViSP minor version.
#define VISP_VERSION_MINOR 2

// ViSP patch version.
#define VISP_VERSION_PATCH 0

// ViSP version with dots "3.2.0".
#define VISP_VERSION 3.2.0

// ViSP version as an integer
#define VP_VERSION_INT(a, b, c) (a<<16 | b<<8 | c)
#define VISP_VERSION_INT VP_VERSION_INT(VISP_VERSION_MAJOR, \
                                        VISP_VERSION_MINOR, \
                                        VISP_VERSION_PATCH)

// Enable debug and trace printings
/* #undef VP_TRACE */
/* #undef VP_DEBUG */
/* #undef VP_DEBUG_MODE */

// ViSP library is either compiled static or shared
// Used to set declspec(import, export) in headers if required under Windows
#define VISP_BUILD_SHARED_LIBS

// Defined if deprecated functionalities are requested to build
#define VISP_BUILD_DEPRECATED_FUNCTIONS

// Defined if MSVC is the compiler
/* #undef VISP_USE_MSVC */

// Defined if Clipper is build and available.
#define VISP_HAVE_CLIPPER

// Defined if April Tag is build and available.
#define VISP_HAVE_APRILTAG

// Defined if X11 library available.
#define VISP_HAVE_X11

// Defined if XML2 library available.
#define VISP_HAVE_XML2

// Defined if pthread library available.
#define VISP_HAVE_PTHREAD

// Defined if YARP available.
/* #undef VISP_HAVE_YARP */

// Defined if OpenCV available.
#define VISP_HAVE_OPENCV

// Defined if OpenCV nonfree module available. Only with OpenCV < 3.0.0
/* #undef VISP_HAVE_OPENCV_NONFREE */

// Defined if OpenCV xfeatures2d module available. Only since OpenCV >= 3.0.0
#define VISP_HAVE_OPENCV_XFEATURES2D

// OpenCV version in hexadecimal (for example 2.1.0 gives 0x020100).
#ifdef VISP_HAVE_OPENCV
#  define VISP_HAVE_OPENCV_VERSION (3<<16 | 4<<8 | 2)
#endif

// Defined if GTK2 library available
/* #undef VISP_HAVE_GTK */

// Defined if GDI (Graphics Device Interface) library available
/* #undef VISP_HAVE_GDI */

// Defined if Direct3D9 library available
/* #undef VISP_HAVE_D3D9 */

// Defined if one of the display device is available
#if defined(VISP_HAVE_X11) || defined(VISP_HAVE_GDI) || defined(VISP_HAVE_OPENCV) || defined(VISP_HAVE_D3D9) || defined(VISP_HAVE_GTK)
#  define VISP_HAVE_DISPLAY
#endif

// Defined if Eigen3 library available
#define VISP_HAVE_EIGEN3

// Defined if GSL library available (-lgsl -lgslcblas)
/* #undef VISP_HAVE_GSL */

// Defined if lapack/blas libraries are available (-lblas -llapack)
#define VISP_HAVE_LAPACK
// To keep compat with previous versions
#ifdef VISP_HAVE_LAPACK
#  define VISP_HAVE_LAPACK_C
#endif

// Defined if clapack built-in
/* #undef VISP_HAVE_LAPACK_BUILT_IN */

// Defined the path to the basic scenes used by the simulator
#define VISP_SCENES_DIR "/usr/local/share/visp-3.2.0/data/wireframe-simulator"

// Defined the path to the robot's arms 3D model used by the robot simulators
#define VISP_ROBOT_ARMS_DIR "/usr/local/share/visp-3.2.0/data/robot-simulator"

// Defined if Ogre3d is available.
#define VISP_HAVE_OGRE

// Defined if Ogre3d plugins.cfg is available.
#define VISP_HAVE_OGRE_PLUGINS_PATH "/usr/local/lib/visp/data/ogre-simulator"

// Defined if Ogre3d resources.cfg is available.
#define VISP_HAVE_OGRE_RESOURCES_PATH "/usr/local/share/visp-3.2.0/data/ogre-simulator"

// Defined if OIS (Object Oriented Input System) library available.
#define VISP_HAVE_OIS

// Defined if Coin3D and one of the GUI (SoXt, SoWin, SoQt + Qt)
// libraries are available.
/* #undef VISP_HAVE_COIN3D_AND_GUI */
// provided for compat with previous releases
#ifdef VISP_HAVE_COIN3D_AND_GUI
#  define VISP_HAVE_COIN_AND_GUI
#endif

// Defined if Coin3D library available.
#define VISP_HAVE_COIN3D
// provided for compat with previous releases
#ifdef VISP_HAVE_COIN3D
#  define VISP_HAVE_COIN
#endif

// Defined if OpenGL library available.
#define VISP_HAVE_OPENGL

// Defined if Qt library available (either Qt-3 or Qt-4).
/* #undef VISP_HAVE_QT */

// Defined if SoQt library available.
/* #undef VISP_HAVE_SOQT */

// Defined if SoWin library available.
/* #undef VISP_HAVE_SOWIN */

// Defined if SoXt library available.
/* #undef VISP_HAVE_SOXT */

// Defined if libjpeg library available.
#define VISP_HAVE_JPEG
#ifdef VISP_HAVE_JPEG
#  define VISP_HAVE_LIBJPEG
#endif

// Defined if libpng library available.
#define VISP_HAVE_PNG
#ifdef VISP_HAVE_PNG
#  define VISP_HAVE_LIBPNG
#endif

// Defined if libfreenect, libusb-1.0 and libpthread libraries available.
/* #undef VISP_HAVE_LIBFREENECT_AND_DEPENDENCIES */

// Defined if libfreenect library available.
/* #undef VISP_HAVE_LIBFREENECT */

// Defined if libfreenect library in an old version package for
// ubuntu 10.04 lucid is available.
// This is a workaround useful to initialise vpKinect depending on the
// libfreenect version
//#ifdef VISP_HAVE_LIBFREENECT_OLD
//  Freenect::Freenect<vpKinect> freenect;
//  vpKinect & kinect = freenect.createDevice(0);
//#else
//  Freenect::Freenect freenect;
//  vpKinect & kinect = freenect.createDevice<vpKinect>(0);
//#endif
/* #undef VISP_HAVE_LIBFREENECT_OLD */

// Defined if libusb-1.0 library available.
#define VISP_HAVE_LIBUSB_1

// Defined if librealSense library is available.
/* #undef VISP_HAVE_REALSENSE */

// Defined if librealSense2 library is available.
#define VISP_HAVE_REALSENSE2

// Defined if raw1394 and dc1394-2.x libraries available.
#define VISP_HAVE_DC1394
#if defined(VISP_BUILD_DEPRECATED_FUNCTIONS) && defined(VISP_HAVE_DC1394)
#  define VISP_HAVE_DC1394_2
#endif

// Defined if dc1394_camera_enumerate() is available in dc1394-2.x.
// dc1394_camera_enumerate() was introduced after libdc1394-2.0.0-rc7.
#define VISP_HAVE_DC1394_CAMERA_ENUMERATE
#if defined(VISP_BUILD_DEPRECATED_FUNCTIONS) && defined(VISP_HAVE_DC1394_CAMERA_ENUMERATE)
#  define VISP_HAVE_DC1394_2_CAMERA_ENUMERATE
#endif

// Defined if dc1394_find_cameras() is available in dc1394-2.x
// dc1394_find_cameras() is still present until libdc1394-2.0.0-rc7.
// This function was suppress and replace by dc1394_camera_enumerate()
// in more recent releases.
/* #undef VISP_HAVE_DC1394_FIND_CAMERAS */
#if defined(VISP_BUILD_DEPRECATED_FUNCTIONS) && defined(VISP_HAVE_DC1394_FIND_CAMERAS)
#  define VISP_HAVE_DC1394_2_FIND_CAMERAS
#endif

// Defined if CMU 1394 Digital Camera SDK available.
/* #undef VISP_HAVE_CMU1394 */

// Defined if Video For Linux Two available.
#define VISP_HAVE_V4L2

// Defined if DirectShow library is available (only under Windows).
/* #undef VISP_HAVE_DIRECTSHOW */

// Defined if PointGrey FlyCapture SDK available.
/* #undef VISP_HAVE_FLYCAPTURE */

// Defined if Basler Pylon SDK available.
/* #undef VISP_HAVE_PYLON */

// Defined if Comedi (linux control and measurement cdevice interface) available.
/* #undef VISP_HAVE_COMEDI */

// Defined if ATIDAQ-C is build and available.
/* #undef VISP_HAVE_ATIDAQ */

// Defined if Irisa's Afma4 robot available.
/* #undef VISP_HAVE_AFMA4 */

// Defined if Irisa's Afma6 robot available.
/* #undef VISP_HAVE_AFMA6 */

// Defined if Irisa's Afma6 data files (camera intrinsic/extrinsic parameters) are available
/* #undef VISP_HAVE_AFMA6_DATA */
#define VISP_AFMA6_DATA_PATH ""

// Defined if Biclops pan-tilt head available.
/* #undef VISP_HAVE_BICLOPS */
/* #undef VISP_HAVE_BICLOPS_AND_GET_HOMED_STATE_FUNCTION */

// Defined if Irisa's Ptu-46 pan-tilt head available.
/* #undef VISP_HAVE_PTU46 */

// Defined if Irisa's Viper S650 robot available.
/* #undef VISP_HAVE_VIPER650 */

// Defined if Inria's Viper650 data files (camera intrinsic/extrinsic parameters) are available
/* #undef VISP_HAVE_VIPER650_DATA */
#define VISP_VIPER650_DATA_PATH ""

// Defined if Irisa's Viper S850 robot available.
/* #undef VISP_HAVE_VIPER850 */

// Defined if Inria's Viper850 data files (camera intrinsic/extrinsic parameters) are available
/* #undef VISP_HAVE_VIPER850_DATA */
#define VISP_VIPER850_DATA_PATH ""

// Defined if Franka Emika robot available.
#define VISP_HAVE_FRANKA

// Defined if the Aria library and (pthread, rt, dl libraries under Unix) is found.
// These libraries are used to control Pioneer mobile robots.
/* #undef VISP_HAVE_PIONEER */

// Defined if Haption Virtuose SDK available.
/* #undef VISP_HAVE_VIRTUOSE */

// Defined if linux/parport.h is available for parallel port usage.
#define VISP_HAVE_PARPORT

// Defined if libzbar is available for bar code detection
/* #undef VISP_HAVE_ZBAR */

// Defined if Point Cloud Library is available
#define VISP_HAVE_PCL

// Defined if libdmtx is available for bar code detection
#define VISP_HAVE_DMTX

// Defined if Doxygen documentation tool is found
/* #undef VISP_HAVE_DOXYGEN */

// Defined if we want to compute interaction matrices by combining
// other interaction matrices
/* #undef VISP_MOMENTS_COMBINE_MATRICES */

//Defined if we want to use openmp
#define VISP_HAVE_OPENMP

//Defined if we want to use c++ 11
#define VISP_HAVE_CPP11_COMPATIBILITY

// Defined if isnan macro is available
/* #undef VISP_HAVE_FUNC_ISNAN */

// Defined if std::isnan function is available
#define VISP_HAVE_FUNC_STD_ISNAN

// Defined if _isnan (Microsoft version) is available
/* #undef VISP_HAVE_FUNC__ISNAN */

// Defined if isinf macro is available
/* #undef VISP_HAVE_FUNC_ISINF */

// Defined if std::isinf function is available
#define VISP_HAVE_FUNC_STD_ISINF

// Defined if _finite (Microsoft version) function is available
/* #undef VISP_HAVE_FUNC__FINITE */

// Defined if round function is available
#define VISP_HAVE_FUNC_ROUND

// Defined if std::round function is available
#define VISP_HAVE_FUNC_STD_ROUND

// Defined if erfc function is available
#define VISP_HAVE_FUNC_ERFC

// Defined if std::erfc function is available
#define VISP_HAVE_FUNC_STD_ERFC

// Defined if strtof function is available
#define VISP_HAVE_FUNC_STRTOF

// Defined if log1p function is available
#define VISP_HAVE_FUNC_LOG1P

// Defined if inet_ntop function is available
#define VISP_HAVE_FUNC_INET_NTOP

// Defined if xrandr program available
#define VISP_HAVE_XRANDR

// Handle portable symbol export.
// Defining manually which symbol should be exported is required
// under Windows whether MinGW or MSVC is used.
//
// The headers then have to be able to work in two different modes:
// - dllexport when one is building the library,
// - dllimport for clients using the library.
//
// On Linux, set the visibility accordingly. If C++ symbol visibility
// is handled by the compiler, see: http://gcc.gnu.org/wiki/Visibility
# if defined(_WIN32) || defined(__CYGWIN__)
// On Microsoft Windows, use dllimport and dllexport to tag symbols.
#  define VISP_DLLIMPORT __declspec(dllimport)
#  define VISP_DLLEXPORT __declspec(dllexport)
#  define VISP_DLLLOCAL
# else
// On Linux, for GCC >= 4, tag symbols using GCC extension.
#  if __GNUC__ >= 4
#   define VISP_DLLIMPORT __attribute__ ((visibility("default")))
#   define VISP_DLLEXPORT __attribute__ ((visibility("default")))
#   define VISP_DLLLOCAL  __attribute__ ((visibility("hidden")))
#  else
// Otherwise (GCC < 4 or another compiler is used), export everything.
#   define VISP_DLLIMPORT
#   define VISP_DLLEXPORT
#   define VISP_DLLLOCAL
#  endif // __GNUC__ >= 4
# endif // defined(_WIN32) || defined(__CYGWIN__)

// Under Windows, for shared libraries (DLL) we need to define export on
// compilation or import on use (like a third party project).
// We exploit here the fact that cmake auto set xxx_EXPORTS (with S) on
// compilation.
#if defined(VISP_BUILD_SHARED_LIBS)
// Depending on whether one is building or using the
// library define VISP_EXPORT to import or export.
#  ifdef visp_EXPORTS
#    define VISP_EXPORT VISP_DLLEXPORT
#  else
#    define VISP_EXPORT VISP_DLLIMPORT
#  endif
#  define VISP_LOCAL VISP_DLLLOCAL
#else
// If one is using the library statically, get rid of
// extra information.
#  define VISP_EXPORT
#  define VISP_LOCAL
#endif

// Add the material to produce a warning when deprecated functions are used
#ifndef vp_deprecated
#  if !defined(_WIN32) && (defined(__unix__) || defined(__unix) || (defined(__APPLE__) && defined(__MACH__))) // UNIX
#    define vp_deprecated __attribute__((deprecated))
#  else
#    define vp_deprecated __declspec(deprecated)
#  endif
#endif

#endif


