!
!
!  Include file for Fortran use of the AO (application ordering) package in PETSc
!
#if !defined (__PETSCAO_H)
#define __PETSCAO_H

#define AO PetscFortranAddr
#define AOData PetscFortranAddr
#define AOType PetscEnum
#define AODataType PetscEnum
#define AOData2dGrid PetscFortranAddr

#endif


#if !defined (PETSC_AVOID_DECLARATIONS)

      PetscEnum AO_BASIC
      PetscEnum AO_ADVANCED
      parameter (AO_BASIC = 0,AO_ADVANCED = 1)

      PetscEnum AODATA_BASIC
      PetscEnum AODATA_ADVANCED
      parameter (AODATA_BASIC=0,AODATA_ADVANCED=1)
!
!  End of Fortran include file for the AO package in PETSc

#endif
