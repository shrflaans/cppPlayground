# CMake generated Testfile for 
# Source directory: /Users/joonkyun/Downloads/opencv-3.4.2/modules/features2d
# Build directory: /Users/joonkyun/Downloads/opencv-3.4.2/release/modules/features2d
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_perf_features2d "/Users/joonkyun/Downloads/opencv-3.4.2/release/bin/opencv_perf_features2d" "--gtest_output=xml:opencv_perf_features2d.xml")
set_tests_properties(opencv_perf_features2d PROPERTIES  LABELS "Main;opencv_features2d;Performance" WORKING_DIRECTORY "/Users/joonkyun/Downloads/opencv-3.4.2/release/test-reports/performance")
add_test(opencv_sanity_features2d "/Users/joonkyun/Downloads/opencv-3.4.2/release/bin/opencv_perf_features2d" "--gtest_output=xml:opencv_perf_features2d.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_features2d PROPERTIES  LABELS "Main;opencv_features2d;Sanity" WORKING_DIRECTORY "/Users/joonkyun/Downloads/opencv-3.4.2/release/test-reports/sanity")
