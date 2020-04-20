# Install script for directory: /home/addo/dev/KWWidgets/CMake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/addo/dev/freesurfer6deps/KWWidgets")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/KWWidgets/CMake" TYPE FILE FILES
    "/home/addo/dev/KWWidgets/CMake/FindSquish.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsVersionMacros.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsTclTkMacros.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsPathsMacros.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsGettextInitOrMerge.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsSquishTestScript.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsInternationalizationMacros.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsGettextExtract.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsTestingMacros.cmake"
    "/home/addo/dev/KWWidgets/CMake/FindIncrTCL.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsWrappingMacros.cmake"
    "/home/addo/dev/KWWidgets/CMake/cmake_install.cmake"
    "/home/addo/dev/KWWidgets/CMake/KWWidgetsResourceMacros.cmake"
    "/home/addo/dev/KWWidgets/CMake/FindGettext.cmake"
    "/home/addo/dev/KWWidgets/CMake/CTestTestfile.cmake"
    )
endif()

