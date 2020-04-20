INCLUDE_DIRECTORIES(${LIBMINC_INCLUDE_DIRS})

IF(HAVE_MINC1)
  ADD_DEFINITIONS( -DHAVE_MINC1=1)

  INCLUDE_DIRECTORIES(${NETCDF_INCLUDE_DIR})
ENDIF(HAVE_MINC1)

IF(HAVE_MINC2)
  SET(MINC2 "1")
  ADD_DEFINITIONS( -DMINC2=1 -DHAVE_MINC2=1)

  INCLUDE_DIRECTORIES(${HDF5_INCLUDE_DIR})
ENDIF(HAVE_MINC2)

LINK_DIRECTORIES(${LIBMINC_LIBRARY_DIRS})