cmake_minimum_required (VERSION 2.6)

# Project name
project (Tutorial)

# Includes
include_directories(include)

# Sources
file(GLOB SOURCES "src/*.cpp")

# Generate a static library from sources
add_library(Tutorial STATIC ${SOURCES})
