# Install script for directory: /home/predmach/visp-ws/visp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/visp/data/ogre-simulator" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ OWNER_WRITE FILES "/home/predmach/visp-ws/visp/build/data/ogre-simulator/plugins.cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/visp/data/ogre-simulator" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ OWNER_WRITE FILES "/home/predmach/visp-ws/visp/build/data/ogre-simulator/plugins_d.cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/visp-3.2.0/data/ogre-simulator" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ OWNER_WRITE FILES "/home/predmach/visp-ws/visp/build/unix-install/resources.cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/visp-3.2.0/data/ogre-simulator" TYPE DIRECTORY PERMISSIONS OWNER_READ GROUP_READ WORLD_READ OWNER_WRITE FILES "/home/predmach/visp-ws/visp/build/data/ogre-simulator/media")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ OWNER_WRITE FILES "/home/predmach/visp-ws/visp/build/doc/man/man1/visp-config.1.gz")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/core" TYPE FILE FILES "/home/predmach/visp-ws/visp/build/unix-install/vpConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3" TYPE FILE FILES "/home/predmach/visp-ws/visp/build/include/visp3/visp_modules.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3" TYPE FILE FILES "/home/predmach/visp-ws/visp/build/include/visp3/visp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp" TYPE FILE FILES
    "/home/predmach/visp-ws/visp/build/include/visp/visp_modules.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vp1394CMUGrabber.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vp1394TwoGrabber.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpAR.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpAROgre.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpAdaptiveGain.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpAfma4.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpAfma6.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpArray2D.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpBSpline.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpBasicFeature.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpBasicKeyPoint.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpBiclops.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpCPUFeatures.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpCalibration.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpCalibrationException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpCameraParameters.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpCircle.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpClient.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpColVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpColor.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpComedi.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpConfig.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpContours.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpConvert.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpCylinder.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpD3DRenderer.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDebug.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDetectorAprilTag.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDetectorBase.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDetectorDataMatrixCode.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDetectorFace.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDetectorQRCode.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDirectShowDevice.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDirectShowGrabber.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDirectShowGrabberImpl.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDirectShowSampleGrabberI.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDiskGrabber.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDisplay.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDisplayD3D.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDisplayException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDisplayGDI.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDisplayGTK.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDisplayOpenCV.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDisplayWin32.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDisplayX.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDot.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpDot2.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpExponentialMap.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureBuilder.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureDepth.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureDisplay.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureEllipse.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureLine.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureLuminance.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMoment.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentAlpha.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentArea.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentAreaNormalized.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentBasic.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentCInvariant.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentCentered.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentCommon.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentDatabase.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentGravityCenter.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureMomentGravityCenterNormalized.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeaturePoint.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeaturePoint3D.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeaturePointPolar.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureSegment.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureThetaU.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureTranslation.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFeatureVanishingPoint.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFernClassifier.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFlyCaptureGrabber.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpForceTorqueAtiSensor.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpForceTwistMatrix.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpForwardProjection.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFrameGrabber.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpFrameGrabberException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpGDIRenderer.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpGEMM.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpGaussRand.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpGenericFeature.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpHinkley.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpHistogram.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpHistogramPeak.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpHistogramValey.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpHomogeneousMatrix.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpHomography.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImage.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImageConvert.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImageException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImageFilter.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImageIo.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImageMorphology.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImagePoint.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImageSimulator.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImageTools.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpImgproc.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpIoException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpIoTools.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpKalmanFilter.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpKeyPoint.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpKeyPointSurf.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpKeyboard.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpKinect.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpKltOpencv.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpLaserScan.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpLaserScanner.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpLevenbergMarquartd.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpLinProg.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpLine.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpLinearKalmanFilterInstantiation.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpList.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMath.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMatrix.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMatrixException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbDepthDenseTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbDepthNormalTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbEdgeKltMultiTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbEdgeKltTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbEdgeMultiTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbEdgeTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbGenericTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbHiddenFaces.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbKltMultiTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbKltTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbScanLine.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbXmlParser.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtDistanceCircle.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtDistanceCylinder.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtDistanceKltCylinder.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtDistanceKltPoints.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtDistanceLine.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtEdgeKltXmlParser.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtFaceDepthDense.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtFaceDepthNormal.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtKltXmlParser.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtMeEllipse.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtMeLine.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtPolygon.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtTukeyEstimator.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtXmlGenericParser.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMbtXmlParser.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMe.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMeEllipse.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMeLine.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMeNurbs.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMeSite.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMeTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMeterPixelConversion.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMoment.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentAlpha.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentArea.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentAreaNormalized.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentBasic.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentCInvariant.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentCentered.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentCommon.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentDatabase.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentGravityCenter.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentGravityCenterNormalized.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMomentObject.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMouseButton.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpMutex.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpNetwork.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpNoise.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpNurbs.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpOpenCVGrabber.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpParallelPort.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpParallelPortException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpParseArgv.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPioneer.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPioneerPan.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPixelMeterConversion.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPlanarObjectDetector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPlane.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPlot.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPlotCurve.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPlotGraph.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPoint.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPolygon.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPolygon3D.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPose.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPoseException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPoseFeatures.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPoseVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpProjectionDisplay.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPtu46.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPylonFactory.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpPylonGrabber.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpQuadProg.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpQuaternionVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRGBa.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRansac.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRealSense.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRealSense2.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRect.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRectOriented.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRequest.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRingLight.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobot.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotAfma4.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotAfma6.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotBiclops.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotBiclopsController.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotCamera.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotFranka.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotPioneer.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotPtu46.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotSimulator.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotTemplate.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotViper650.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotViper850.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobotWireFrameSimulator.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRobust.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRotationMatrix.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRotationVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRowVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRxyzVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRzyxVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpRzyzVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpScale.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpScanPoint.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSerial.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpServer.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpServo.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpServoData.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpServoDisplay.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpServoException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpServolens.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSickLDMRS.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSimulator.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSimulatorAfma6.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSimulatorCamera.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSimulatorException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSimulatorPioneer.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSimulatorPioneerPan.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSimulatorViper850.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSphere.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSubColVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSubMatrix.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpSubRowVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerBSpline.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerHeader.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerMI.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerMIBSpline.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerMIESM.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerMIForwardAdditional.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerMIForwardCompositional.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerMIInverseCompositional.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerSSD.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerSSDESM.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerSSDForwardAdditional.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerSSDForwardCompositional.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerSSDInverseCompositional.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerTriangle.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerWarp.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerWarpAffine.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerWarpHomography.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerWarpHomographySL3.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerWarpRT.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerWarpSRT.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerWarpTranslation.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerZNCC.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerZNCCForwardAdditional.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerZNCCInverseCompositional.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTemplateTrackerZone.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpThetaUVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpThread.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTime.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTracker.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTrackingException.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTranslationVector.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpTriangle.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpUDPClient.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpUDPServer.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpUniRand.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpUnicycle.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpV4l2Grabber.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpVelocityTwistMatrix.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpVideoReader.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpVideoWriter.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpViewer.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpViper.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpViper650.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpViper850.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpVirtuose.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpWin32API.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpWin32Renderer.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpWin32Window.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpWireFrameSimulator.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpWireFrameSimulatorTypes.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpXmlConfigParserKeyPoint.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpXmlParser.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpXmlParserCamera.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpXmlParserHomogeneousMatrix.h"
    "/home/predmach/visp-ws/visp/build/include/visp/vpXmlParserRectOriented.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/visp" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ OWNER_WRITE FILES
    "/home/predmach/visp-ws/visp/build/unix-install/VISPConfig.cmake"
    "/home/predmach/visp-ws/visp/build/unix-install/VISPConfigVersion.cmake"
    "/home/predmach/visp-ws/visp/build/unix-install/VISPUse.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/visp/VISPModules.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/visp/VISPModules.cmake"
         "/home/predmach/visp-ws/visp/build/CMakeFiles/Export/lib/cmake/visp/VISPModules.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/visp/VISPModules-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/visp/VISPModules.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/visp" TYPE FILE FILES "/home/predmach/visp-ws/visp/build/CMakeFiles/Export/lib/cmake/visp/VISPModules.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/visp" TYPE FILE FILES "/home/predmach/visp-ws/visp/build/CMakeFiles/Export/lib/cmake/visp/VISPModules-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ OWNER_EXECUTE GROUP_EXECUTE WORLD_EXECUTE OWNER_WRITE FILES "/home/predmach/visp-ws/visp/build/unix-install/visp-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ OWNER_WRITE FILES "/home/predmach/visp-ws/visp/build/unix-install/visp.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/predmach/visp-ws/visp/build/3rdparty/clipper/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/3rdparty/apriltag/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/modules/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/demo/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/example/cmake_install.cmake")
  include("/home/predmach/visp-ws/visp/build/tutorial/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/predmach/visp-ws/visp/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
