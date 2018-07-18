# Install script for directory: /Users/joonkyun/Downloads/opencv-3.4.2/3rdparty/openexr

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/3rdparty/lib" TYPE STATIC_LIBRARY FILES "/Users/joonkyun/Downloads/opencv-3.4.2/release/3rdparty/lib/libIlmImf.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/OpenCV/3rdparty/lib/libIlmImf.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/OpenCV/3rdparty/lib/libIlmImf.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/OpenCV/3rdparty/lib/libIlmImf.a")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/licenses" TYPE FILE OPTIONAL RENAME "openexr-LICENSE" FILES "/Users/joonkyun/Downloads/opencv-3.4.2/3rdparty/openexr/LICENSE")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/licenses" TYPE FILE OPTIONAL RENAME "openexr-AUTHORS.ilmbase" FILES "/Users/joonkyun/Downloads/opencv-3.4.2/3rdparty/openexr/AUTHORS.ilmbase")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/licenses" TYPE FILE OPTIONAL RENAME "openexr-AUTHORS.openexr" FILES "/Users/joonkyun/Downloads/opencv-3.4.2/3rdparty/openexr/AUTHORS.openexr")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/licenses" TYPE FILE OPTIONAL RENAME "openexr-fix_msvc2013_errors.patch" FILES "/Users/joonkyun/Downloads/opencv-3.4.2/3rdparty/openexr/fix_msvc2013_errors.patch")
endif()
