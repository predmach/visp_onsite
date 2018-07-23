//! \example tutorial-chessboard-pose.cpp
#include <iostream>
#include <fstream>
#include <ios>

#include <visp3/core/vpConfig.h>

#if 1 // VISP_HAVE_OPENCV_VERSION >= 0x020300

#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/calib3d/calib3d.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <visp3/gui/vpDisplayX.h>
#include <visp3/gui/vpDisplayGDI.h>
#include <visp3/gui/vpDisplayOpenCV.h>
#include <visp3/gui/vpDisplayD3D.h>
#include <visp3/core/vpIoTools.h>
#include <visp3/core/vpPoint.h>
#include <visp3/core/vpPixelMeterConversion.h>
#include <visp3/core/vpXmlParserCamera.h>
#include <visp3/io/vpVideoReader.h>
#include <visp3/vision/vpPose.h>

#include <visp3/sensor/vpRealSense2.h>
#include <visp3/detection/vpDetectorAprilTag.h>
#include <visp3/mbt/vpMbGenericTracker.h>
typedef enum {
  state_detection,
  state_tracking,
  state_quit
} state_t;

namespace {


bool detectAprilTag(const vpImage<unsigned char> &I, vpDetectorAprilTag &detector,
                       double tagSize, const vpCameraParameters &cam, vpHomogeneousMatrix &cMo)
{
  std::vector<vpHomogeneousMatrix> cMo_vec;

  // Detection
  bool ret = detector.detect(I, tagSize, cam, cMo_vec);

  // Display camera pose
  for (size_t i = 0; i < cMo_vec.size(); i++) {
    vpDisplay::displayFrame(I, cMo_vec[i], cam, tagSize / 2, vpColor::none, 3);
  }

  vpDisplay::displayText(I, 40, 20, "State: waiting tag detection", vpColor::red);

  if (ret && detector.getNbObjects() > 0) { // if tag detected, we pick the first one
    cMo = cMo_vec[0];
    return true;
  }

  return false;
}



void calcChessboardCorners(const int width, const int height, const double squareSize, std::vector<vpPoint> &corners) {
  corners.resize(0);

  for (int i = 0; i < height; i++) {
    for (int j = 0; j < width; j++) {
      vpPoint pt;
      pt.set_oX(j*squareSize);
      pt.set_oY(i*squareSize);
      pt.set_oZ(0.0);
      corners.push_back(pt);
    }
  }
}
} //namespace

int main(int argc, const char ** argv) {
  vpDetectorAprilTag::vpAprilTagFamily opt_tag_family = vpDetectorAprilTag::TAG_36h11;
  double opt_tag_size = 0.08;
  float opt_quad_decimate = 1.0;
  int opt_nthreads = 1;
  double opt_cube_size = 0.125; // 12.5cm by default
  bool opt_use_texture = false;
  bool opt_use_depth = false;
  double opt_projection_error_threshold = 40.;

  bool display_off = true;



  int chessboard_width = 9, chessboard_height = 6;
  double chessboard_square_size = 0.03;
  std::string input_filename = "";
  std::string intrinsic_file = "camera.xml";
  std::string camera_name = "Camera";

  for (int i = 1; i < argc; i++) {
    if (std::string(argv[i]) == "-w" && i+1 < argc) {
      chessboard_width = atoi(argv[i+1]);
    } else if (std::string(argv[i]) == "-h" && i+1 < argc) {
      chessboard_height = atoi(argv[i+1]);
    } else if (std::string(argv[i]) == "--square_size" && i+1 < argc) {
      chessboard_square_size = atof(argv[i+1]);
    } else if (std::string(argv[i]) == "--input" && i+1 < argc) {
      input_filename = std::string(argv[i+1]);
    } else if (std::string(argv[i]) == "--intrinsic" && i+1 < argc) {
      intrinsic_file = std::string(argv[i+1]);
    } else if (std::string(argv[i]) == "--camera_name" && i+1 < argc) {
      camera_name = std::string(argv[i+1]);
    }
    else if (std::string(argv[i]) == "--tag_size" && i + 1 < argc) {
      opt_tag_size = atof(argv[i + 1]);
    } else if (std::string(argv[i]) == "--quad_decimate" && i + 1 < argc) {
      opt_quad_decimate = (float)atof(argv[i + 1]);
    } else if (std::string(argv[i]) == "--nthreads" && i + 1 < argc) {
      opt_nthreads = atoi(argv[i + 1]);
    } else if (std::string(argv[i]) == "--display_off") {
      display_off = true;
    } else if (std::string(argv[i]) == "--tag_family" && i + 1 < argc) {
      opt_tag_family = (vpDetectorAprilTag::vpAprilTagFamily)atoi(argv[i + 1]);
    } else if (std::string(argv[i]) == "--cube_size" && i + 1 < argc) {
      opt_cube_size = atof(argv[i + 1]);
    } else if (std::string(argv[i]) == "--texture") {
      opt_use_texture = true;
    } else if (std::string(argv[i]) == "--depth") {
      opt_use_depth = true;
    } else if (std::string(argv[i]) == "--projection_error" && i + 1 < argc) {
      opt_projection_error_threshold = atof(argv[i + 1]);
    } else if (std::string(argv[i]) == "--help") {
      std::cout << argv[0] << " [-w <chessboard width>] [-w <chessboard height>] [--square_size <square size in meter>] [--input <input images path>] [--intrinsic <Camera intrinsic parameters xml file>] [--camera_name <Camera name in the xml intrinsic file>]" << std::endl;
      return EXIT_SUCCESS;
    }
  }

  vpCameraParameters cam;
#ifdef VISP_HAVE_XML2
  vpXmlParserCamera parser;
  if (!intrinsic_file.empty() && !camera_name.empty()) {
    parser.parse(cam, intrinsic_file, camera_name, vpCameraParameters::perspectiveProjWithDistortion);
  }
#endif
  std::cout << "cam:\n" << cam << std::endl;
  


  std::cout << "Chessboard arameters:" << std::endl;
  std::cout << "chessboard_width=" << chessboard_width << std::endl;
  std::cout << "chessboard_height=" << chessboard_height << std::endl;
  std::cout << "chessboard_square_size=" << chessboard_square_size << std::endl;
  std::cout << "input_filename=" << input_filename << std::endl;
  std::cout << "intrinsic_file=" << intrinsic_file << std::endl;
  std::cout << "camera_name=" << camera_name << std::endl;


  std::cout << "Aril Tags arameters:" << std::endl;

  std::cout << "Cube size: " << opt_cube_size << std::endl;
  std::cout << "AprilTag size: " << opt_tag_size << std::endl;
  std::cout << "AprilTag family: " << opt_tag_family << std::endl;
  std::cout << "Camera parameters:" << std::endl;
  std::cout << "  Color:\n" << cam << std::endl;
  // if (opt_use_depth)
  //   std::cout << "  Depth:\n" << cam_depth << std::endl;
  std::cout << "Detection: " << std::endl;
  std::cout << "  Quad decimate: " << opt_quad_decimate << std::endl;
  std::cout << "  Threads number: " << opt_nthreads << std::endl;
  std::cout << "Tracker: " << std::endl;
  std::cout << "  Use edges  : 1" << std::endl;
  std::cout << "  Use texture: "
            << opt_use_texture << std::endl;
  std::cout << "  Use depth  : " << opt_use_depth << std::endl;
  std::cout << "  Projection error: " << opt_projection_error_threshold << std::endl;

  vpVideoReader reader;
  if (input_filename.empty()) {
    std::cerr << "input_filename.empty()" << std::endl;
    return EXIT_FAILURE;
  }
  reader.setFileName(input_filename);

  vpImage<vpRGBa> I;
  reader.open(I);
  vpImage<unsigned char> I_gray(I.getHeight(), I.getWidth());

  // vpDisplay *d_main = NULL;

#ifdef VISP_HAVE_X11
  vpDisplayX d(I);
#elif defined VISP_HAVE_GDI
  vpDisplayGDI d(I);
#elif defined VISP_HAVE_OPENCV
  vpDisplayOpenCV d(I);
#endif

  // Initialize AprilTag detector
  vpDetectorAprilTag detector(opt_tag_family);
  detector.setAprilTagQuadDecimate(opt_quad_decimate);
  detector.setAprilTagNbThreads(opt_nthreads);

  if (reader.end())
    std::cout << "reader is empty!" << std::endl;

  vpHomogeneousMatrix cMo;

  bool quit = false;
  bool found = false;
  while (!quit && !reader.end()) {
    reader.acquire(I);

    cv::Mat matImg;
    vpImageConvert::convert(I, matImg);

    vpDisplay::displayText(I, 20, 20, "Right click to quit.", vpColor::red);


    vpDisplay::display(I);

    vpDisplay::displayText(I, 20, 20, "Left click for the next image, right click to quit.", vpColor::red);
    vpImageConvert::convert(I, I_gray);
    found = detectAprilTag(I_gray, detector, opt_tag_size, cam, cMo);
    if (found)
      vpDisplay::displayFrame(I, cMo, cam, 0.05, vpColor::none, 3);

    vpDisplay::flush(I);
    vpDisplay::flush(I_gray);

    if (found) {
      vpPoseVector pose_vec(cMo);
      std::stringstream ss;
      ss << "pose_cPo_" << reader.getFrameIndex() << ".yaml";
      std::cout << "Save " << ss.str() << std::endl;
      pose_vec.saveYAML(ss.str(), pose_vec);
    }
    else
    {
      std::cout << "Not able to use frame, no tag detected" << std::endl;
    }

    vpMouseButton::vpMouseButtonType button;
    if (vpDisplay::getClick(I, button, true)) {
      switch (button) {
        case vpMouseButton::button3:
          quit = true;
          break;

        default:
          break;
      }
    }
  }

  return EXIT_SUCCESS;
}
#else
int main() {
  std::cerr << "OpenCV 2.3.0 or higher is requested to run the calibration." << std::endl;
  return EXIT_SUCCESS;
}
#endif

