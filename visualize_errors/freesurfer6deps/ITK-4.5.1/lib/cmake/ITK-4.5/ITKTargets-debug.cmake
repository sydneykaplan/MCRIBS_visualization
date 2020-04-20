#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "itkdouble-conversion" for configuration "Debug"
set_property(TARGET itkdouble-conversion APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkdouble-conversion PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkdouble-conversion-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkdouble-conversion-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkdouble-conversion )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkdouble-conversion "${_IMPORT_PREFIX}/lib/libitkdouble-conversion-4.5.so.1" )

# Import target "itksys" for configuration "Debug"
set_property(TARGET itksys APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itksys PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "dl;dl"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitksys-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitksys-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itksys )
list(APPEND _IMPORT_CHECK_FILES_FOR_itksys "${_IMPORT_PREFIX}/lib/libitksys-4.5.so.1" )

# Import target "itkvcl" for configuration "Debug"
set_property(TARGET itkvcl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkvcl PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "m"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkvcl-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkvcl-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkvcl )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkvcl "${_IMPORT_PREFIX}/lib/libitkvcl-4.5.so.1" )

# Import target "itkv3p_netlib" for configuration "Debug"
set_property(TARGET itkv3p_netlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkv3p_netlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "m"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkv3p_netlib-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkv3p_netlib-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkv3p_netlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkv3p_netlib "${_IMPORT_PREFIX}/lib/libitkv3p_netlib-4.5.so.1" )

# Import target "itkv3p_lsqr" for configuration "Debug"
set_property(TARGET itkv3p_lsqr APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkv3p_lsqr PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "m"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkv3p_lsqr-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkv3p_lsqr-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkv3p_lsqr )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkv3p_lsqr "${_IMPORT_PREFIX}/lib/libitkv3p_lsqr-4.5.so.1" )

# Import target "itkvnl" for configuration "Debug"
set_property(TARGET itkvnl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkvnl PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkvcl"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkvnl-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkvnl-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkvnl )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkvnl "${_IMPORT_PREFIX}/lib/libitkvnl-4.5.so.1" )

# Import target "itkvnl_algo" for configuration "Debug"
set_property(TARGET itkvnl_algo APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkvnl_algo PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkv3p_netlib;itkvnl;itkv3p_lsqr"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkvnl_algo-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkvnl_algo-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkvnl_algo )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkvnl_algo "${_IMPORT_PREFIX}/lib/libitkvnl_algo-4.5.so.1" )

# Import target "ITKVNLInstantiation" for configuration "Debug"
set_property(TARGET ITKVNLInstantiation APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKVNLInstantiation PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkvnl_algo;itkvnl;itkv3p_netlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKVNLInstantiation-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKVNLInstantiation-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKVNLInstantiation )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKVNLInstantiation "${_IMPORT_PREFIX}/lib/libITKVNLInstantiation-4.5.so.1" )

# Import target "ITKCommon" for configuration "Debug"
set_property(TARGET ITKCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKCommon PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itksys;ITKVNLInstantiation;itkdouble-conversion;-lpthread;dl;-lm"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKCommon-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKCommon-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKCommon "${_IMPORT_PREFIX}/lib/libITKCommon-4.5.so.1" )

# Import target "itkNetlibSlatec" for configuration "Debug"
set_property(TARGET itkNetlibSlatec APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkNetlibSlatec PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkv3p_netlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkNetlibSlatec-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkNetlibSlatec-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkNetlibSlatec )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkNetlibSlatec "${_IMPORT_PREFIX}/lib/libitkNetlibSlatec-4.5.so.1" )

# Import target "ITKStatistics" for configuration "Debug"
set_property(TARGET ITKStatistics APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKStatistics PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon;itkNetlibSlatec"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKStatistics-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKStatistics-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKStatistics )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKStatistics "${_IMPORT_PREFIX}/lib/libITKStatistics-4.5.so.1" )

# Import target "ITKIOImageBase" for configuration "Debug"
set_property(TARGET ITKIOImageBase APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOImageBase PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOImageBase-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOImageBase-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOImageBase )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOImageBase "${_IMPORT_PREFIX}/lib/libITKIOImageBase-4.5.so.1" )

# Import target "ITKMesh" for configuration "Debug"
set_property(TARGET ITKMesh APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKMesh PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon;ITKStatistics"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKMesh-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKMesh-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKMesh )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKMesh "${_IMPORT_PREFIX}/lib/libITKMesh-4.5.so.1" )

# Import target "itkzlib" for configuration "Debug"
set_property(TARGET itkzlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkzlib PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkzlib-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkzlib-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkzlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkzlib "${_IMPORT_PREFIX}/lib/libitkzlib-4.5.so.1" )

# Import target "ITKMetaIO" for configuration "Debug"
set_property(TARGET ITKMetaIO APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKMetaIO PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkzlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKMetaIO-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKMetaIO-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKMetaIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKMetaIO "${_IMPORT_PREFIX}/lib/libITKMetaIO-4.5.so.1" )

# Import target "ITKSpatialObjects" for configuration "Debug"
set_property(TARGET ITKSpatialObjects APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKSpatialObjects PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon;ITKStatistics;ITKMesh;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKSpatialObjects-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKSpatialObjects-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKSpatialObjects )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKSpatialObjects "${_IMPORT_PREFIX}/lib/libITKSpatialObjects-4.5.so.1" )

# Import target "ITKPath" for configuration "Debug"
set_property(TARGET ITKPath APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKPath PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon;ITKCommon;ITKStatistics"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKPath-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKPath-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKPath )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKPath "${_IMPORT_PREFIX}/lib/libITKPath-4.5.so.1" )

# Import target "ITKLabelMap" for configuration "Debug"
set_property(TARGET ITKLabelMap APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKLabelMap PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKStatistics"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKLabelMap-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKLabelMap-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKLabelMap )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKLabelMap "${_IMPORT_PREFIX}/lib/libITKLabelMap-4.5.so.1" )

# Import target "ITKQuadEdgeMesh" for configuration "Debug"
set_property(TARGET ITKQuadEdgeMesh APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKQuadEdgeMesh PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKMesh"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKQuadEdgeMesh-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKQuadEdgeMesh-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKQuadEdgeMesh )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKQuadEdgeMesh "${_IMPORT_PREFIX}/lib/libITKQuadEdgeMesh-4.5.so.1" )

# Import target "ITKOptimizers" for configuration "Debug"
set_property(TARGET ITKOptimizers APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKOptimizers PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKStatistics"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKOptimizers-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKOptimizers-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKOptimizers )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKOptimizers "${_IMPORT_PREFIX}/lib/libITKOptimizers-4.5.so.1" )

# Import target "ITKPolynomials" for configuration "Debug"
set_property(TARGET ITKPolynomials APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKPolynomials PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKPolynomials-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKPolynomials-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKPolynomials )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKPolynomials "${_IMPORT_PREFIX}/lib/libITKPolynomials-4.5.so.1" )

# Import target "ITKBiasCorrection" for configuration "Debug"
set_property(TARGET ITKBiasCorrection APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKBiasCorrection PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon;ITKPolynomials;ITKStatistics;ITKOptimizers"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKBiasCorrection-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKBiasCorrection-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKBiasCorrection )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKBiasCorrection "${_IMPORT_PREFIX}/lib/libITKBiasCorrection-4.5.so.1" )

# Import target "ITKBioCell" for configuration "Debug"
set_property(TARGET ITKBioCell APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKBioCell PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKMesh"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKBioCell-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKBioCell-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKBioCell )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKBioCell "${_IMPORT_PREFIX}/lib/libITKBioCell-4.5.so.1" )

# Import target "ITKDICOMParser" for configuration "Debug"
set_property(TARGET ITKDICOMParser APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKDICOMParser PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKDICOMParser-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKDICOMParser-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKDICOMParser )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKDICOMParser "${_IMPORT_PREFIX}/lib/libITKDICOMParser-4.5.so.1" )

# Import target "ITKEXPAT" for configuration "Debug"
set_property(TARGET ITKEXPAT APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKEXPAT PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKEXPAT-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKEXPAT-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKEXPAT )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKEXPAT "${_IMPORT_PREFIX}/lib/libITKEXPAT-4.5.so.1" )

# Import target "ITKIOXML" for configuration "Debug"
set_property(TARGET ITKIOXML APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOXML PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKEXPAT;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOXML-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOXML-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOXML )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOXML "${_IMPORT_PREFIX}/lib/libITKIOXML-4.5.so.1" )

# Import target "ITKIOSpatialObjects" for configuration "Debug"
set_property(TARGET ITKIOSpatialObjects APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOSpatialObjects PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKSpatialObjects;ITKIOXML;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOSpatialObjects-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOSpatialObjects-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOSpatialObjects )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOSpatialObjects "${_IMPORT_PREFIX}/lib/libITKIOSpatialObjects-4.5.so.1" )

# Import target "ITKFEM" for configuration "Debug"
set_property(TARGET ITKFEM APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKFEM PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKMetaIO;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKOptimizers"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKFEM-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKFEM-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKFEM )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKFEM "${_IMPORT_PREFIX}/lib/libITKFEM-4.5.so.1" )

# Import target "ITKIOBMP" for configuration "Debug"
set_property(TARGET ITKIOBMP APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOBMP PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOBMP-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOBMP-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOBMP )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOBMP "${_IMPORT_PREFIX}/lib/libITKIOBMP-4.5.so.1" )

# Import target "ITKIOBioRad" for configuration "Debug"
set_property(TARGET ITKIOBioRad APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOBioRad PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOBioRad-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOBioRad-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOBioRad )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOBioRad "${_IMPORT_PREFIX}/lib/libITKIOBioRad-4.5.so.1" )

# Import target "itkopenjpeg" for configuration "Debug"
set_property(TARGET itkopenjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkopenjpeg PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "m"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkopenjpeg-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkopenjpeg-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkopenjpeg )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkopenjpeg "${_IMPORT_PREFIX}/lib/libitkopenjpeg-4.5.so.1" )

# Import target "gdcmjpeg8" for configuration "Debug"
set_property(TARGET gdcmjpeg8 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gdcmjpeg8 PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkgdcmjpeg8-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkgdcmjpeg8-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS gdcmjpeg8 )
list(APPEND _IMPORT_CHECK_FILES_FOR_gdcmjpeg8 "${_IMPORT_PREFIX}/lib/libitkgdcmjpeg8-4.5.so.1" )

# Import target "gdcmjpeg12" for configuration "Debug"
set_property(TARGET gdcmjpeg12 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gdcmjpeg12 PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkgdcmjpeg12-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkgdcmjpeg12-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS gdcmjpeg12 )
list(APPEND _IMPORT_CHECK_FILES_FOR_gdcmjpeg12 "${_IMPORT_PREFIX}/lib/libitkgdcmjpeg12-4.5.so.1" )

# Import target "gdcmjpeg16" for configuration "Debug"
set_property(TARGET gdcmjpeg16 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gdcmjpeg16 PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkgdcmjpeg16-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkgdcmjpeg16-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS gdcmjpeg16 )
list(APPEND _IMPORT_CHECK_FILES_FOR_gdcmjpeg16 "${_IMPORT_PREFIX}/lib/libitkgdcmjpeg16-4.5.so.1" )

# Import target "gdcmuuid" for configuration "Debug"
set_property(TARGET gdcmuuid APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gdcmuuid PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkgdcmuuid-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkgdcmuuid-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS gdcmuuid )
list(APPEND _IMPORT_CHECK_FILES_FOR_gdcmuuid "${_IMPORT_PREFIX}/lib/libitkgdcmuuid-4.5.so.1" )

# Import target "gdcmCommon" for configuration "Debug"
set_property(TARGET gdcmCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gdcmCommon PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkgdcmCommon-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkgdcmCommon-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS gdcmCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_gdcmCommon "${_IMPORT_PREFIX}/lib/libitkgdcmCommon-4.5.so.1" )

# Import target "gdcmDICT" for configuration "Debug"
set_property(TARGET gdcmDICT APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gdcmDICT PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "gdcmDSED;gdcmIOD"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkgdcmDICT-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkgdcmDICT-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS gdcmDICT )
list(APPEND _IMPORT_CHECK_FILES_FOR_gdcmDICT "${_IMPORT_PREFIX}/lib/libitkgdcmDICT-4.5.so.1" )

# Import target "gdcmDSED" for configuration "Debug"
set_property(TARGET gdcmDSED APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gdcmDSED PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "itkzlib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "gdcmCommon"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkgdcmDSED-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkgdcmDSED-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS gdcmDSED )
list(APPEND _IMPORT_CHECK_FILES_FOR_gdcmDSED "${_IMPORT_PREFIX}/lib/libitkgdcmDSED-4.5.so.1" )

# Import target "gdcmIOD" for configuration "Debug"
set_property(TARGET gdcmIOD APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gdcmIOD PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ITKEXPAT"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "gdcmDSED;gdcmCommon"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkgdcmIOD-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkgdcmIOD-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS gdcmIOD )
list(APPEND _IMPORT_CHECK_FILES_FOR_gdcmIOD "${_IMPORT_PREFIX}/lib/libitkgdcmIOD-4.5.so.1" )

# Import target "gdcmMSFF" for configuration "Debug"
set_property(TARGET gdcmMSFF APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gdcmMSFF PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "gdcmjpeg8;gdcmjpeg12;gdcmjpeg16;itkopenjpeg;gdcmuuid"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "gdcmDSED;gdcmDICT;gdcmIOD"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkgdcmMSFF-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkgdcmMSFF-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS gdcmMSFF )
list(APPEND _IMPORT_CHECK_FILES_FOR_gdcmMSFF "${_IMPORT_PREFIX}/lib/libitkgdcmMSFF-4.5.so.1" )

# Import target "ITKIOGDCM" for configuration "Debug"
set_property(TARGET ITKIOGDCM APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOGDCM PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "gdcmDICT;gdcmMSFF;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOGDCM-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOGDCM-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOGDCM )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOGDCM "${_IMPORT_PREFIX}/lib/libITKIOGDCM-4.5.so.1" )

# Import target "ITKIOIPL" for configuration "Debug"
set_property(TARGET ITKIOIPL APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOIPL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOIPL-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOIPL-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOIPL )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOIPL "${_IMPORT_PREFIX}/lib/libITKIOIPL-4.5.so.1" )

# Import target "ITKIOGE" for configuration "Debug"
set_property(TARGET ITKIOGE APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOGE PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOIPL"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOGE-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOGE-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOGE )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOGE "${_IMPORT_PREFIX}/lib/libITKIOGE-4.5.so.1" )

# Import target "ITKIOGIPL" for configuration "Debug"
set_property(TARGET ITKIOGIPL APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOGIPL PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOImageBase;itkzlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOGIPL-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOGIPL-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOGIPL )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOGIPL "${_IMPORT_PREFIX}/lib/libITKIOGIPL-4.5.so.1" )

# Import target "itkjpeg" for configuration "Debug"
set_property(TARGET itkjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkjpeg PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkjpeg-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkjpeg-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkjpeg )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkjpeg "${_IMPORT_PREFIX}/lib/libitkjpeg-4.5.so.1" )

# Import target "ITKIOJPEG" for configuration "Debug"
set_property(TARGET ITKIOJPEG APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOJPEG PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkjpeg;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOJPEG-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOJPEG-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOJPEG )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOJPEG "${_IMPORT_PREFIX}/lib/libITKIOJPEG-4.5.so.1" )

# Import target "ITKIOMeta" for configuration "Debug"
set_property(TARGET ITKIOMeta APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOMeta PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKMetaIO;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOMeta-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOMeta-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOMeta )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOMeta "${_IMPORT_PREFIX}/lib/libITKIOMeta-4.5.so.1" )

# Import target "ITKznz" for configuration "Debug"
set_property(TARGET ITKznz APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKznz PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkzlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKznz-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKznz-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKznz )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKznz "${_IMPORT_PREFIX}/lib/libITKznz-4.5.so.1" )

# Import target "ITKniftiio" for configuration "Debug"
set_property(TARGET ITKniftiio APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKniftiio PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKznz;-lm"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKniftiio-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKniftiio-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKniftiio )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKniftiio "${_IMPORT_PREFIX}/lib/libITKniftiio-4.5.so.1" )

# Import target "ITKIONIFTI" for configuration "Debug"
set_property(TARGET ITKIONIFTI APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIONIFTI PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKznz;ITKniftiio;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIONIFTI-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIONIFTI-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIONIFTI )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIONIFTI "${_IMPORT_PREFIX}/lib/libITKIONIFTI-4.5.so.1" )

# Import target "ITKNrrdIO" for configuration "Debug"
set_property(TARGET ITKNrrdIO APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKNrrdIO PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkzlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKNrrdIO-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKNrrdIO-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKNrrdIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKNrrdIO "${_IMPORT_PREFIX}/lib/libITKNrrdIO-4.5.so.1" )

# Import target "ITKIONRRD" for configuration "Debug"
set_property(TARGET ITKIONRRD APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIONRRD PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKNrrdIO;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIONRRD-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIONRRD-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIONRRD )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIONRRD "${_IMPORT_PREFIX}/lib/libITKIONRRD-4.5.so.1" )

# Import target "itkpng" for configuration "Debug"
set_property(TARGET itkpng APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkpng PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkzlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkpng-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkpng-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkpng )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkpng "${_IMPORT_PREFIX}/lib/libitkpng-4.5.so.1" )

# Import target "ITKIOPNG" for configuration "Debug"
set_property(TARGET ITKIOPNG APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOPNG PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkpng;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOPNG-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOPNG-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOPNG )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOPNG "${_IMPORT_PREFIX}/lib/libITKIOPNG-4.5.so.1" )

# Import target "ITKIOSiemens" for configuration "Debug"
set_property(TARGET ITKIOSiemens APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOSiemens PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOIPL;ITKIOGE"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOSiemens-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOSiemens-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOSiemens )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOSiemens "${_IMPORT_PREFIX}/lib/libITKIOSiemens-4.5.so.1" )

# Import target "ITKIOStimulate" for configuration "Debug"
set_property(TARGET ITKIOStimulate APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOStimulate PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOStimulate-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOStimulate-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOStimulate )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOStimulate "${_IMPORT_PREFIX}/lib/libITKIOStimulate-4.5.so.1" )

# Import target "itktiff" for configuration "Debug"
set_property(TARGET itktiff APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itktiff PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkzlib;itkjpeg;-lm"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitktiff-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitktiff-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itktiff )
list(APPEND _IMPORT_CHECK_FILES_FOR_itktiff "${_IMPORT_PREFIX}/lib/libitktiff-4.5.so.1" )

# Import target "ITKIOTIFF" for configuration "Debug"
set_property(TARGET ITKIOTIFF APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOTIFF PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itktiff;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOTIFF-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOTIFF-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOTIFF )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOTIFF "${_IMPORT_PREFIX}/lib/libITKIOTIFF-4.5.so.1" )

# Import target "ITKIOTransformBase" for configuration "Debug"
set_property(TARGET ITKIOTransformBase APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOTransformBase PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon;ITKStatistics"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOTransformBase-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOTransformBase-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOTransformBase )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOTransformBase "${_IMPORT_PREFIX}/lib/libITKIOTransformBase-4.5.so.1" )

# Import target "itkhdf5" for configuration "Debug"
set_property(TARGET itkhdf5 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkhdf5 PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "m;itkzlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkhdf5-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkhdf5-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkhdf5 )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkhdf5 "${_IMPORT_PREFIX}/lib/libitkhdf5-4.5.so.1" )

# Import target "itkhdf5_cpp" for configuration "Debug"
set_property(TARGET itkhdf5_cpp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkhdf5_cpp PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkhdf5"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libitkhdf5_cpp-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libitkhdf5_cpp-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkhdf5_cpp )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkhdf5_cpp "${_IMPORT_PREFIX}/lib/libitkhdf5_cpp-4.5.so.1" )

# Import target "ITKIOTransformHDF5" for configuration "Debug"
set_property(TARGET ITKIOTransformHDF5 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOTransformHDF5 PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOTransformBase;itkhdf5_cpp;itkhdf5"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOTransformHDF5-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOTransformHDF5-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOTransformHDF5 )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOTransformHDF5 "${_IMPORT_PREFIX}/lib/libITKIOTransformHDF5-4.5.so.1" )

# Import target "ITKIOTransformInsightLegacy" for configuration "Debug"
set_property(TARGET ITKIOTransformInsightLegacy APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOTransformInsightLegacy PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOTransformBase;itkdouble-conversion"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOTransformInsightLegacy-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOTransformInsightLegacy-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOTransformInsightLegacy )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOTransformInsightLegacy "${_IMPORT_PREFIX}/lib/libITKIOTransformInsightLegacy-4.5.so.1" )

# Import target "ITKIOTransformMatlab" for configuration "Debug"
set_property(TARGET ITKIOTransformMatlab APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOTransformMatlab PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOTransformBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOTransformMatlab-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOTransformMatlab-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOTransformMatlab )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOTransformMatlab "${_IMPORT_PREFIX}/lib/libITKIOTransformMatlab-4.5.so.1" )

# Import target "ITKIOVTK" for configuration "Debug"
set_property(TARGET ITKIOVTK APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOVTK PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOVTK-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOVTK-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOVTK )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOVTK "${_IMPORT_PREFIX}/lib/libITKIOVTK-4.5.so.1" )

# Import target "ITKKLMRegionGrowing" for configuration "Debug"
set_property(TARGET ITKKLMRegionGrowing APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKKLMRegionGrowing PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKKLMRegionGrowing-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKKLMRegionGrowing-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKKLMRegionGrowing )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKKLMRegionGrowing "${_IMPORT_PREFIX}/lib/libITKKLMRegionGrowing-4.5.so.1" )

# Import target "ITKIOLSM" for configuration "Debug"
set_property(TARGET ITKIOLSM APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOLSM PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOTIFF"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOLSM-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOLSM-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOLSM )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOLSM "${_IMPORT_PREFIX}/lib/libITKIOLSM-4.5.so.1" )

# Import target "itkTestDriver" for configuration "Debug"
set_property(TARGET itkTestDriver APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(itkTestDriver PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/itkTestDriver"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkTestDriver )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkTestDriver "${_IMPORT_PREFIX}/bin/itkTestDriver" )

# Import target "ITKVTK" for configuration "Debug"
set_property(TARGET ITKVTK APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKVTK PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKVTK-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKVTK-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKVTK )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKVTK "${_IMPORT_PREFIX}/lib/libITKVTK-4.5.so.1" )

# Import target "ITKWatersheds" for configuration "Debug"
set_property(TARGET ITKWatersheds APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKWatersheds PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKWatersheds-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKWatersheds-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKWatersheds )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKWatersheds "${_IMPORT_PREFIX}/lib/libITKWatersheds-4.5.so.1" )

# Import target "ITKDeprecated" for configuration "Debug"
set_property(TARGET ITKDeprecated APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKDeprecated PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKVTK;ITKCommon;ITKCommon;ITKCommon;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKCommon;ITKSpatialObjects;ITKStatistics;ITKMesh;ITKQuadEdgeMesh;ITKSpatialObjects;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKLabelMap;ITKSpatialObjects;ITKPath;ITKQuadEdgeMesh;ITKOptimizers;ITKBiasCorrection;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKLabelMap;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKSpatialObjects;ITKStatistics;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKLabelMap;ITKSpatialObjects;ITKPath;ITKQuadEdgeMesh;ITKOptimizers;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKPath;ITKQuadEdgeMesh;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKIOImageBase;ITKIOBioRad;ITKIOBMP;ITKIOGDCM;ITKIOGE;ITKIOGIPL;ITKIOIPL;ITKIOJPEG;ITKIOLSM;ITKIOMeta;ITKIONIFTI;ITKIONRRD;ITKIOPNG;ITKIOImageBase;ITKIOSiemens;ITKIOSpatialObjects;ITKIOStimulate;ITKIOTIFF;ITKIOVTK;ITKIOXML;ITKCommon;ITKFEM;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKStatistics;ITKOptimizers;ITKPolynomials;ITKStatistics;ITKFEM;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKOptimizers;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKOptimizers;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKOptimizers;ITKBioCell;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKMesh;ITKKLMRegionGrowing;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKLabelMap;ITKSpatialObjects;ITKPath;ITKQuadEdgeMesh;ITKOptimizers;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKCommon;ITKMesh;ITKWatersheds;ITKDICOMParser"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKDeprecated-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKDeprecated-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKDeprecated )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKDeprecated "${_IMPORT_PREFIX}/lib/libITKDeprecated-4.5.so.1" )

# Import target "ITKgiftiio" for configuration "Debug"
set_property(TARGET ITKgiftiio APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKgiftiio PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKEXPAT;ITKznz;ITKniftiio"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKgiftiio-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKgiftiio-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKgiftiio )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKgiftiio "${_IMPORT_PREFIX}/lib/libITKgiftiio-4.5.so.1" )

# Import target "ITKIOCSV" for configuration "Debug"
set_property(TARGET ITKIOCSV APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOCSV PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOCSV-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOCSV-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOCSV )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOCSV "${_IMPORT_PREFIX}/lib/libITKIOCSV-4.5.so.1" )

# Import target "ITKIOHDF5" for configuration "Debug"
set_property(TARGET ITKIOHDF5 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOHDF5 PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "itkhdf5_cpp;itkhdf5;ITKIOImageBase;itkhdf5_cpp;itkhdf5"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOHDF5-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOHDF5-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOHDF5 )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOHDF5 "${_IMPORT_PREFIX}/lib/libITKIOHDF5-4.5.so.1" )

# Import target "ITKIOMRC" for configuration "Debug"
set_property(TARGET ITKIOMRC APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOMRC PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOMRC-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOMRC-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOMRC )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOMRC "${_IMPORT_PREFIX}/lib/libITKIOMRC-4.5.so.1" )

# Import target "ITKIOMesh" for configuration "Debug"
set_property(TARGET ITKIOMesh APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKIOMesh PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon;ITKgiftiio;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKIOMesh-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKIOMesh-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOMesh )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOMesh "${_IMPORT_PREFIX}/lib/libITKIOMesh-4.5.so.1" )

# Import target "ITKReview" for configuration "Debug"
set_property(TARGET ITKReview APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKReview PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKVTK;ITKCommon;ITKCommon;ITKCommon;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKCommon;ITKSpatialObjects;ITKStatistics;ITKMesh;ITKQuadEdgeMesh;ITKSpatialObjects;ITKIOTransformMatlab;ITKIOTransformHDF5;ITKIOTransformInsightLegacy;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKLabelMap;ITKSpatialObjects;ITKPath;ITKQuadEdgeMesh;ITKOptimizers;ITKBiasCorrection;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKLabelMap;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKSpatialObjects;ITKStatistics;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKLabelMap;ITKSpatialObjects;ITKPath;ITKQuadEdgeMesh;ITKOptimizers;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKPath;ITKQuadEdgeMesh;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKIOImageBase;ITKIOBioRad;ITKIOBMP;ITKIOGDCM;ITKIOGE;ITKIOGIPL;ITKIOIPL;ITKIOJPEG;ITKIOMeta;ITKIONIFTI;ITKIONRRD;ITKIOPNG;ITKIOImageBase;ITKIOSiemens;ITKIOSpatialObjects;ITKIOStimulate;ITKIOTIFF;ITKIOVTK;ITKIOXML;ITKCommon;ITKFEM;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKStatistics;ITKOptimizers;ITKPolynomials;ITKStatistics;ITKFEM;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKOptimizers;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKOptimizers;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKOptimizers;ITKBioCell;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKMesh;ITKKLMRegionGrowing;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKLabelMap;ITKSpatialObjects;ITKPath;ITKQuadEdgeMesh;ITKOptimizers;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKCommon;ITKMesh;ITKWatersheds;itkopenjpeg"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKReview-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKReview-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKReview )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKReview "${_IMPORT_PREFIX}/lib/libITKReview-4.5.so.1" )

# Import target "ITKVideoCore" for configuration "Debug"
set_property(TARGET ITKVideoCore APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKVideoCore PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKCommon"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKVideoCore-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKVideoCore-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKVideoCore )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKVideoCore "${_IMPORT_PREFIX}/lib/libITKVideoCore-4.5.so.1" )

# Import target "ITKVideoIO" for configuration "Debug"
set_property(TARGET ITKVideoIO APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ITKVideoIO PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ITKVideoCore;ITKIOImageBase"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libITKVideoIO-4.5.so.1"
  IMPORTED_SONAME_DEBUG "libITKVideoIO-4.5.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKVideoIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKVideoIO "${_IMPORT_PREFIX}/lib/libITKVideoIO-4.5.so.1" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
