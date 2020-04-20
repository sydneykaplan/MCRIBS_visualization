#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "vtkWrapTcl" for configuration "Release"
set_property(TARGET vtkWrapTcl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkWrapTcl PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkWrapTcl"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkWrapTcl )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkWrapTcl "${_IMPORT_PREFIX}/bin/vtkWrapTcl" )

# Import target "vtkWrapTclInit" for configuration "Release"
set_property(TARGET vtkWrapTclInit APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkWrapTclInit PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkWrapTclInit"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkWrapTclInit )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkWrapTclInit "${_IMPORT_PREFIX}/bin/vtkWrapTclInit" )

# Import target "vtksys" for configuration "Release"
set_property(TARGET vtksys APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtksys PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "dl"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtksys.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtksys.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtksys )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtksys "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtksys.so.5.10.1" )

# Import target "vtkzlib" for configuration "Release"
set_property(TARGET vtkzlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkzlib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkzlib.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkzlib.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkzlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkzlib "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkzlib.so.5.10.1" )

# Import target "vtkhdf5" for configuration "Release"
set_property(TARGET vtkhdf5 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkhdf5 PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "m;vtkzlib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkhdf5.so.1.8.5"
  IMPORTED_SONAME_RELEASE "libvtkhdf5.so.1.8.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkhdf5 )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkhdf5 "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkhdf5.so.1.8.5" )

# Import target "vtkhdf5_hl" for configuration "Release"
set_property(TARGET vtkhdf5_hl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkhdf5_hl PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkhdf5"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkhdf5_hl.so.1.8.5"
  IMPORTED_SONAME_RELEASE "libvtkhdf5_hl.so.1.8.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkhdf5_hl )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkhdf5_hl "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkhdf5_hl.so.1.8.5" )

# Import target "vtkjpeg" for configuration "Release"
set_property(TARGET vtkjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkjpeg PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkjpeg.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkjpeg.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkjpeg )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkjpeg "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkjpeg.so.5.10.1" )

# Import target "vtkpng" for configuration "Release"
set_property(TARGET vtkpng APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkpng PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkzlib;-lm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkpng.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkpng.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkpng )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkpng "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkpng.so.5.10.1" )

# Import target "vtktiff" for configuration "Release"
set_property(TARGET vtktiff APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtktiff PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkzlib;vtkjpeg;-lm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtktiff.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtktiff.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtktiff )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtktiff "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtktiff.so.5.10.1" )

# Import target "vtkexpat" for configuration "Release"
set_property(TARGET vtkexpat APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkexpat PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkexpat.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkexpat.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkexpat )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkexpat "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkexpat.so.5.10.1" )

# Import target "vtkfreetype" for configuration "Release"
set_property(TARGET vtkfreetype APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkfreetype PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkfreetype.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkfreetype.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkfreetype )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkfreetype "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkfreetype.so.5.10.1" )

# Import target "vtklibxml2" for configuration "Release"
set_property(TARGET vtklibxml2 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtklibxml2 PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkzlib;dl;-lpthread;dl;m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtklibxml2.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtklibxml2.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtklibxml2 )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtklibxml2 "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtklibxml2.so.5.10.1" )

# Import target "vtkDICOMParser" for configuration "Release"
set_property(TARGET vtkDICOMParser APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkDICOMParser PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkDICOMParser.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkDICOMParser.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkDICOMParser )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkDICOMParser "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkDICOMParser.so.5.10.1" )

# Import target "vtkproj4" for configuration "Release"
set_property(TARGET vtkproj4 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkproj4 PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkproj4.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkproj4.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkproj4 )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkproj4 "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkproj4.so.5.10.1" )

# Import target "mpistubs" for configuration "Release"
set_property(TARGET mpistubs APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(mpistubs PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libmpistubs.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libmpistubs.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS mpistubs )
list(APPEND _IMPORT_CHECK_FILES_FOR_mpistubs "${_IMPORT_PREFIX}/lib/vtk-5.10/libmpistubs.so.5.10.1" )

# Import target "MapReduceMPI" for configuration "Release"
set_property(TARGET MapReduceMPI APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(MapReduceMPI PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "mpistubs"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libMapReduceMPI.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libMapReduceMPI.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS MapReduceMPI )
list(APPEND _IMPORT_CHECK_FILES_FOR_MapReduceMPI "${_IMPORT_PREFIX}/lib/vtk-5.10/libMapReduceMPI.so.5.10.1" )

# Import target "vtkverdict" for configuration "Release"
set_property(TARGET vtkverdict APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkverdict PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkverdict.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkverdict.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkverdict )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkverdict "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkverdict.so.5.10.1" )

# Import target "vtkNetCDF" for configuration "Release"
set_property(TARGET vtkNetCDF APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkNetCDF PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkhdf5;vtkhdf5_hl"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkNetCDF.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkNetCDF.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkNetCDF )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkNetCDF "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkNetCDF.so.5.10.1" )

# Import target "vtkNetCDF_cxx" for configuration "Release"
set_property(TARGET vtkNetCDF_cxx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkNetCDF_cxx PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkNetCDF"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkNetCDF_cxx.so"
  IMPORTED_SONAME_RELEASE "libvtkNetCDF_cxx.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkNetCDF_cxx )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkNetCDF_cxx "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkNetCDF_cxx.so" )

# Import target "vtkmetaio" for configuration "Release"
set_property(TARGET vtkmetaio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkmetaio PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkzlib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkmetaio.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkmetaio.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkmetaio )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkmetaio "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkmetaio.so.5.10.1" )

# Import target "vtksqlite" for configuration "Release"
set_property(TARGET vtksqlite APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtksqlite PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "-lpthread"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtksqlite.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtksqlite.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtksqlite )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtksqlite "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtksqlite.so.5.10.1" )

# Import target "vtkexoIIc" for configuration "Release"
set_property(TARGET vtkexoIIc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkexoIIc PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkNetCDF"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkexoIIc.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkexoIIc.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkexoIIc )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkexoIIc "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkexoIIc.so.5.10.1" )

# Import target "LSDyna" for configuration "Release"
set_property(TARGET LSDyna APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LSDyna PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libLSDyna.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libLSDyna.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS LSDyna )
list(APPEND _IMPORT_CHECK_FILES_FOR_LSDyna "${_IMPORT_PREFIX}/lib/vtk-5.10/libLSDyna.so.5.10.1" )

# Import target "vtkalglib" for configuration "Release"
set_property(TARGET vtkalglib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkalglib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkalglib.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkalglib.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkalglib )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkalglib "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkalglib.so.5.10.1" )

# Import target "vtkEncodeString" for configuration "Release"
set_property(TARGET vtkEncodeString APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkEncodeString PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkEncodeString"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkEncodeString )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkEncodeString "${_IMPORT_PREFIX}/bin/vtkEncodeString" )

# Import target "vtkftgl" for configuration "Release"
set_property(TARGET vtkftgl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkftgl PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "/usr/lib/x86_64-linux-gnu/libGL.so;vtkfreetype"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkftgl.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkftgl.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkftgl )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkftgl "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkftgl.so.5.10.1" )

# Import target "vtkCommonTCL" for configuration "Release"
set_property(TARGET vtkCommonTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkCommonTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommon;/usr/lib/x86_64-linux-gnu/libtcl8.4.so;m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkCommonTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkCommonTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkCommonTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkCommonTCL.so.5.10.1" )

# Import target "vtkCommon" for configuration "Release"
set_property(TARGET vtkCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkCommon PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtksys;-lm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkCommon.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkCommon.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommon "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkCommon.so.5.10.1" )

# Import target "vtkFilteringTCL" for configuration "Release"
set_property(TARGET vtkFilteringTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkFilteringTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltering;vtkCommonTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkFilteringTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkFilteringTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkFilteringTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkFilteringTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkFilteringTCL.so.5.10.1" )

# Import target "vtkFiltering" for configuration "Release"
set_property(TARGET vtkFiltering APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkFiltering PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommon"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkFiltering.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkFiltering.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkFiltering )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltering "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkFiltering.so.5.10.1" )

# Import target "vtkImagingTCL" for configuration "Release"
set_property(TARGET vtkImagingTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkImagingTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImaging;vtkFilteringTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkImagingTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkImagingTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkImagingTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkImagingTCL.so.5.10.1" )

# Import target "vtkImaging" for configuration "Release"
set_property(TARGET vtkImaging APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkImaging PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltering"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkImaging.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkImaging.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkImaging )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkImaging "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkImaging.so.5.10.1" )

# Import target "vtkGraphicsTCL" for configuration "Release"
set_property(TARGET vtkGraphicsTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkGraphicsTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkGraphics;vtkFilteringTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGraphicsTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkGraphicsTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkGraphicsTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkGraphicsTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGraphicsTCL.so.5.10.1" )

# Import target "vtkGraphics" for configuration "Release"
set_property(TARGET vtkGraphics APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkGraphics PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkverdict"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltering"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGraphics.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkGraphics.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkGraphics )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkGraphics "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGraphics.so.5.10.1" )

# Import target "vtkGenericFilteringTCL" for configuration "Release"
set_property(TARGET vtkGenericFilteringTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkGenericFilteringTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkGenericFiltering;vtkFilteringTCL;vtkGraphicsTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGenericFilteringTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkGenericFilteringTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkGenericFilteringTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkGenericFilteringTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGenericFilteringTCL.so.5.10.1" )

# Import target "vtkGenericFiltering" for configuration "Release"
set_property(TARGET vtkGenericFiltering APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkGenericFiltering PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltering;vtkGraphics"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGenericFiltering.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkGenericFiltering.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkGenericFiltering )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkGenericFiltering "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGenericFiltering.so.5.10.1" )

# Import target "vtkIOTCL" for configuration "Release"
set_property(TARGET vtkIOTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkIOTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkIO;vtkFilteringTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkIOTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkIOTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkIOTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkIOTCL.so.5.10.1" )

# Import target "vtkIO" for configuration "Release"
set_property(TARGET vtkIO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkIO PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkDICOMParser;vtkNetCDF;vtkNetCDF_cxx;LSDyna;vtkmetaio;vtksqlite;vtkpng;vtkzlib;vtkjpeg;vtktiff;vtkexpat;vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltering"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkIO.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkIO.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkIO "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkIO.so.5.10.1" )

# Import target "vtkRenderingTCL" for configuration "Release"
set_property(TARGET vtkRenderingTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkRenderingTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRendering;vtkGraphicsTCL;vtkImagingTCL;/usr/lib/x86_64-linux-gnu/libtk8.4.so;/usr/lib/x86_64-linux-gnu/libtcl8.4.so;m;/usr/lib/x86_64-linux-gnu/libSM.so;/usr/lib/x86_64-linux-gnu/libICE.so;/usr/lib/x86_64-linux-gnu/libX11.so;/usr/lib/x86_64-linux-gnu/libXext.so"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkRenderingTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkRenderingTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkRenderingTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkRenderingTCL.so.5.10.1" )

# Import target "vtkRendering" for configuration "Release"
set_property(TARGET vtkRendering APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkRendering PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkIO;vtkftgl;vtkfreetype"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkGraphics;vtkImaging"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkRendering.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkRendering.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkRendering )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkRendering "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkRendering.so.5.10.1" )

# Import target "vtkVolumeRenderingTCL" for configuration "Release"
set_property(TARGET vtkVolumeRenderingTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkVolumeRenderingTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkVolumeRendering;vtkRenderingTCL;vtkIOTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkVolumeRenderingTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkVolumeRenderingTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkVolumeRenderingTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkVolumeRenderingTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkVolumeRenderingTCL.so.5.10.1" )

# Import target "vtkVolumeRendering" for configuration "Release"
set_property(TARGET vtkVolumeRendering APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkVolumeRendering PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRendering;vtkIO"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkVolumeRendering.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkVolumeRendering.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkVolumeRendering )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkVolumeRendering "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkVolumeRendering.so.5.10.1" )

# Import target "vtkHybridTCL" for configuration "Release"
set_property(TARGET vtkHybridTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkHybridTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkHybrid;vtkRenderingTCL;vtkIOTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkHybridTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkHybridTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkHybridTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkHybridTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkHybridTCL.so.5.10.1" )

# Import target "vtkHybrid" for configuration "Release"
set_property(TARGET vtkHybrid APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkHybrid PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkexoIIc;vtkftgl"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRendering;vtkIO"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkHybrid.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkHybrid.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkHybrid )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkHybrid "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkHybrid.so.5.10.1" )

# Import target "vtkWidgetsTCL" for configuration "Release"
set_property(TARGET vtkWidgetsTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkWidgetsTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkWidgets;vtkRenderingTCL;vtkHybridTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkWidgetsTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkWidgetsTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkWidgetsTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkWidgetsTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkWidgetsTCL.so.5.10.1" )

# Import target "vtkWidgets" for configuration "Release"
set_property(TARGET vtkWidgets APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkWidgets PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRendering;vtkHybrid;vtkVolumeRendering"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkWidgets.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkWidgets.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkWidgets )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkWidgets "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkWidgets.so.5.10.1" )

# Import target "vtkInfovisTCL" for configuration "Release"
set_property(TARGET vtkInfovisTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkInfovisTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkInfovis;vtkWidgetsTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkInfovisTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkInfovisTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkInfovisTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkInfovisTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkInfovisTCL.so.5.10.1" )

# Import target "vtkInfovis" for configuration "Release"
set_property(TARGET vtkInfovis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkInfovis PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtklibxml2;vtkalglib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkWidgets"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkInfovis.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkInfovis.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkInfovis )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkInfovis "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkInfovis.so.5.10.1" )

# Import target "vtkGeovisTCL" for configuration "Release"
set_property(TARGET vtkGeovisTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkGeovisTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkGeovis;vtkWidgetsTCL;vtkViewsTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGeovisTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkGeovisTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkGeovisTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkGeovisTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGeovisTCL.so.5.10.1" )

# Import target "vtkGeovis" for configuration "Release"
set_property(TARGET vtkGeovis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkGeovis PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkproj4"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkWidgets;vtkViews"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGeovis.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkGeovis.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkGeovis )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkGeovis "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkGeovis.so.5.10.1" )

# Import target "vtkViewsTCL" for configuration "Release"
set_property(TARGET vtkViewsTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkViewsTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkViews;vtkInfovisTCL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkViewsTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkViewsTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkViewsTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkViewsTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkViewsTCL.so.5.10.1" )

# Import target "vtkViews" for configuration "Release"
set_property(TARGET vtkViews APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkViews PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkInfovis"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkViews.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkViews.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkViews )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkViews "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkViews.so.5.10.1" )

# Import target "vtkChartsTCL" for configuration "Release"
set_property(TARGET vtkChartsTCL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkChartsTCL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCharts;vtkViewsTCL;/usr/lib/x86_64-linux-gnu/libtk8.4.so;/usr/lib/x86_64-linux-gnu/libtcl8.4.so;m"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkChartsTCL.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkChartsTCL.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkChartsTCL )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkChartsTCL "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkChartsTCL.so.5.10.1" )

# Import target "vtkCharts" for configuration "Release"
set_property(TARGET vtkCharts APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtkCharts PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkftgl"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkViews"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkCharts.so.5.10.1"
  IMPORTED_SONAME_RELEASE "libvtkCharts.so.5.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkCharts )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkCharts "${_IMPORT_PREFIX}/lib/vtk-5.10/libvtkCharts.so.5.10.1" )

# Import target "vtk" for configuration "Release"
set_property(TARGET vtk APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vtk PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtk"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtk )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtk "${_IMPORT_PREFIX}/bin/vtk" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
