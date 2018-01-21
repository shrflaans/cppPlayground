cmake_minimum_required (VERSION 2.6)

#-----------------------------------------
# Root CMake file for Playground
#
# Caveat
# ------
# - Only tested on Mac
#
#
# TODO
# ----
# - Add support for other platforms
#
#-----------------------------------------

# Project name
set(PROJECT_NAME "Playground")
project(${PROJECT_NAME})

# Includes
include_directories("include")

# Sources
file(GLOB SOURCES "src/*.cpp")
file(GLOB HEADERS "include/*.h")

# 3rd parties
add_subdirectory("3rdparty/glfw")

# Generate an executable
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})
target_link_libraries(${PROJECT_NAME} glfw)

# Install
install(TARGETS ${PROJECT_NAME} DESTINATION bin)