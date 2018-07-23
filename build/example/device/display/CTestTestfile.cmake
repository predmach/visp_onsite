# CMake generated Testfile for 
# Source directory: /home/predmach/visp-ws/visp/example/device/display
# Build directory: /home/predmach/visp-ws/visp/build/example/device/display
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(displaySequence "displaySequence" "-d")
add_test(displayGDI "displayGDI" "-c" "-d")
add_test(displayD3D "displayD3D" "-c" "-d")
add_test(displayGTK "displayGTK" "-c" "-d")
add_test(displayX "displayX" "-c" "-d")
add_test(displayOpenCV "displayOpenCV" "-c" "-d")
add_test(displayXMulti "displayXMulti" "-c" "-d")
