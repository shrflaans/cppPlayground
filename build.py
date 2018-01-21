#!/usr/bin/python
import os
import shutil
import subprocess

import pdb

############################################################
# Build script
# ------------
# This script will build our project into build/ directory.
#
#
# Prerequisite
# ------------
# - brew install cmake
#
############################################################

# Build folder
BUILD_FOLDER = "build"

# Our cmake call
CMAKE_CALL = "cmake -G Xcode ../."

# Xcode proj
XCODE_PROJ = "Playground.xcodeproj"

# Build
def build():
	shutil.rmtree(BUILD_FOLDER)
	os.mkdir(BUILD_FOLDER)
	os.chdir(BUILD_FOLDER)
	subprocess.call(CMAKE_CALL, shell=True)
	subprocess.call("open " + XCODE_PROJ, shell=True)

# Main
def main():
	build()	

if __name__ == "__main__":
	main()
