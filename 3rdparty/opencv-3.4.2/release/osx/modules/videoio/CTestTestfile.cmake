# CMake generated Testfile for 
# Source directory: /Users/joonkyun/Downloads/opencv-3.4.2/modules/videoio
# Build directory: /Users/joonkyun/Downloads/opencv-3.4.2/release/modules/videoio
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_perf_videoio "/Users/joonkyun/Downloads/opencv-3.4.2/release/bin/opencv_perf_videoio" "--gtest_output=xml:opencv_perf_videoio.xml")
set_tests_properties(opencv_perf_videoio PROPERTIES  LABELS "Main;opencv_videoio;Performance" WORKING_DIRECTORY "/Users/joonkyun/Downloads/opencv-3.4.2/release/test-reports/performance")
add_test(opencv_sanity_videoio "/Users/joonkyun/Downloads/opencv-3.4.2/release/bin/opencv_perf_videoio" "--gtest_output=xml:opencv_perf_videoio.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_videoio PROPERTIES  LABELS "Main;opencv_videoio;Sanity" WORKING_DIRECTORY "/Users/joonkyun/Downloads/opencv-3.4.2/release/test-reports/sanity")
