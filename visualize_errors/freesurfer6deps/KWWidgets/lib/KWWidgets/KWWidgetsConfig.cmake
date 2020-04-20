#-----------------------------------------------------------------------------
#
# KWWidgetsConfig.cmake - CMake configuration file for external projects.
#
# This file is configured by KWWidgets and used by the UseKWWidgets.cmake 
# module to load KWWidgets's settings for an external project.

# Compute the installation prefix from KWWidgets_DIR.
set(KWWidgets_INSTALL_PREFIX "${KWWidgets_DIR}")
GET_FILENAME_COMPONENT(KWWidgets_INSTALL_PREFIX "${KWWidgets_INSTALL_PREFIX}" PATH)
GET_FILENAME_COMPONENT(KWWidgets_INSTALL_PREFIX "${KWWidgets_INSTALL_PREFIX}" PATH)

# The KWWidgets version number.
set(KWWidgets_MAJOR_VERSION "1")
set(KWWidgets_MINOR_VERSION "0")
set(KWWidgets_PATCH_VERSION "0")

# The libraries.
set(KWWidgets_LIBRARIES "KWWidgets")

# The list of available languages.
set(KWWidgets_LANGUAGES "TCL")

# The CMake macros dir.
set(KWWidgets_CMAKE_DIR "${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets/CMake")

# The configuration options.
set(KWWidgets_BUILD_SHARED_LIBS "ON")
set(KWWidgets_BUILD_TESTING "ON")
set(KWWidgets_USE_HTML_HELP "")
set(KWWidgets_USE_INTERNATIONALIZATION "OFF")
set(KWWidgets_USE_INCR_TCL "OFF")
set(KWWidgets_BUILD_VTK_WIDGETS "ON")

# Installation options.
set(KWWidgets_INSTALL_BIN_DIR     "/bin")
set(KWWidgets_INSTALL_LIB_DIR     "/lib/KWWidgets")
set(KWWidgets_INSTALL_DATA_DIR    "/share/KWWidgets")
set(KWWidgets_INSTALL_INCLUDE_DIR "/include/KWWidgets")
set(KWWidgets_INSTALL_PACKAGE_DIR "/lib/KWWidgets")

# The C and C++ flags added to the cmake-configured flags.
set(KWWidgets_REQUIRED_C_FLAGS 
  "")
set(KWWidgets_REQUIRED_CXX_FLAGS 
  "")
set(KWWidgets_REQUIRED_EXE_LINKER_FLAGS 
  "")
set(KWWidgets_REQUIRED_SHARED_LINKER_FLAGS 
  "")
set(KWWidgets_REQUIRED_MODULE_LINKER_FLAGS 
  "")

# The "use" file.
set(KWWidgets_USE_FILE "${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets/UseKWWidgets.cmake")

# The build settings file.
set(KWWidgets_BUILD_SETTINGS_FILE "${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets/KWWidgetsBuildSettings.cmake")

# The library directories.
set(KWWidgets_LIBRARY_DIRS "${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets")

# The runtime directories.
# Note that if KWWidgets_CONFIGURATION_TYPES is set (see below) then
# these directories will be the parent directories under which there will
# be a directory of runtime binaries for each configuration type.
set(KWWidgets_RUNTIME_DIRS "${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets")

# The include directories.
set(KWWidgets_INCLUDE_DIRS "${KWWidgets_INSTALL_PREFIX}/include/KWWidgets")

# The library dependencies file.
if(NOT KWWidgets_NO_LIBRARY_DEPENDS AND
    EXISTS "${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets/KWWidgetsLibraryDepends.cmake")
  include("${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets/KWWidgetsLibraryDepends.cmake")
endif(NOT KWWidgets_NO_LIBRARY_DEPENDS AND
  EXISTS "${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets/KWWidgetsLibraryDepends.cmake")

# The examples dir.
set(KWWidgets_EXAMPLES_DIR "${KWWidgets_INSTALL_PREFIX}/share/KWWidgets/Examples")

# The templates dir.
set(KWWidgets_TEMPLATES_DIR "${KWWidgets_INSTALL_PREFIX}/include/KWWidgets/Templates")

# The resources dir.
set(KWWidgets_RESOURCES_DIR "${KWWidgets_INSTALL_PREFIX}/share/KWWidgets/Resources")

# The Tcl/Tk options.
set(KWWidgets_TCL_PACKAGE_INDEX_DIR 
  "${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets/tcl")

# The Python options.
set(KWWidgets_PYTHON_MODULE_DIR
  "${KWWidgets_INSTALL_PREFIX}/lib/KWWidgets/../python2.4/site-packages")

# The Doxygen options.
set(KWWidgets_DOXYGEN_DIR "${KWWidgets_INSTALL_PREFIX}")

# The VTK options.
set(KWWidgets_VTK_DIR "${KWWidgets_INSTALL_PREFIX}/lib/vtk-5.10")

# The gettext library. This is only defined for build dirs to help projects
# find the gettext library (it is safe to assume we are on the same machine;
# we could not guarantee that if we are building against an installed 
# KWWidgets though).
set(GETTEXT_SEARCH_PATH ${GETTEXT_SEARCH_PATH} "")

# An install tree always provides one build configuration.
# A build tree may provide either one or multiple build
# configurations depending on the CMake generator used. Since
# this project can be used either from a build tree or an install tree it
# is useful for outside projects to know the configurations available.
# If this KWWidgetsConfig.cmake is in an install tree
# KWWidgets_CONFIGURATION_TYPES will be empty and KWWidgets_BUILD_TYPE
# will be set to the value of CMAKE_BUILD_TYPE used to build
# KWWidgets. If KWWidgetsConfig.cmake is in a build tree
# then KWWidgets_CONFIGURATION_TYPES and KWWidgets_BUILD_TYPE will
# have values matching CMAKE_CONFIGURATION_TYPES and CMAKE_BUILD_TYPE
# for that build tree (only one will ever be set).
set(KWWidgets_CONFIGURATION_TYPES )
set(KWWidgets_BUILD_TYPE )
