/*
   This is the main PETSc include file (for C and C++).  It is included by all
   other PETSc include files, so it almost never has to be specifically included.
*/
#if !defined(__PETSC_H)
#define __PETSC_H
/* ========================================================================== */
/* 
   petscconf.h is contained in bmake/${PETSC_ARCH}/petscconf.h it is 
   found automatically by the compiler due to the -I${PETSC_DIR}/bmake/${PETSC_ARCH}
   in the bmake/common/variables definition of PETSC_INCLUDE
*/
#include "petscconf.h"

/* ========================================================================== */
/* 
   This facilitates using C version of PETSc from C++ and 
   C++ version from C. Use --with-c-support --with-clanguage=c++ with config/configure.py for the latter)
*/
#if defined(PETSC_CLANGUAGE_CXX) && !defined(PETSC_USE_EXTERN_CXX) && !defined(__cplusplus)
#error "PETSc configured with --with-clanguage=c++ and NOT --with-c-support - it can be used only with a C++ compiler"
#endif      

#if defined(PETSC_USE_EXTERN_CXX) && defined(__cplusplus)
#define PETSC_EXTERN_CXX_BEGIN extern "C" {
#define PETSC_EXTERN_CXX_END  }
#else
#define PETSC_EXTERN_CXX_BEGIN
#define PETSC_EXTERN_CXX_END
#endif
/* ========================================================================== */
/* 
   Current PETSc version number and release date. Also listed in
    Web page
    src/docs/tex/manual/intro.tex,
    src/docs/tex/manual/manual.tex.
    src/docs/website/index.html.
*/
#include "petscversion.h"
#define PETSC_AUTHOR_INFO        "\
       The PETSc Team\n\
    petsc-maint@mcs.anl.gov\n\
 http://www.mcs.anl.gov/petsc/\n"
#if (PETSC_VERSION_RELEASE == 1)
#define PetscGetVersion(version,len) (PetscSNPrintf(*(version),len,"Petsc Release Version %d.%d.%d, Patch %d, ", \
                                         PETSC_VERSION_MAJOR,PETSC_VERSION_MINOR, PETSC_VERSION_SUBMINOR, \
                                         PETSC_VERSION_PATCH),PetscStrcat(*(version),PETSC_VERSION_PATCH_DATE), \
                                         PetscStrcat(*(version)," HG revision: "),PetscStrcat(*(version),PETSC_VERSION_HG),0)
#else
#define PetscGetVersion(version,len) (PetscSNPrintf(*(version),len,"Petsc Development Version %d.%d.%d, Patch %d, ", \
                                         PETSC_VERSION_MAJOR,PETSC_VERSION_MINOR, PETSC_VERSION_SUBMINOR, \
                                         PETSC_VERSION_PATCH),PetscStrcat(*(version),PETSC_VERSION_PATCH_DATE), \
                                         PetscStrcat(*(version)," HG revision: "),PetscStrcat(*(version),PETSC_VERSION_HG),0)
#endif

/*MC
    PetscGetVersion - Gets the Petsc Version information in a string.

    Output Parameter:
.   version - version string

    Input Parameter:
.   len - length of the string

    Level: developer

    Usage:
    char version[256];
    PetscGetVersion(&version,256);

    Fortran Note:
    This routine is not supported in Fortran.

.seealso: PetscGetProgramName()

M*/

/* ========================================================================== */

/*
   Currently cannot check formatting for PETSc print statements because we have our
   own format %D and %G
*/
#undef  PETSC_PRINTF_FORMAT_CHECK
#define PETSC_PRINTF_FORMAT_CHECK(a,b)
#undef  PETSC_FPRINTF_FORMAT_CHECK
#define PETSC_FPRINTF_FORMAT_CHECK(a,b)

/*
   Fixes for configure time choices which impact our interface. Currently only
   calling conventions and extra compiler checking falls under this category.
*/
#if !defined(PETSC_STDCALL)
#define PETSC_STDCALL
#endif
#if !defined(PETSC_TEMPLATE)
#define PETSC_TEMPLATE
#endif
#if !defined(PETSC_HAVE_DLL_EXPORT)
#define PETSC_DLL_EXPORT
#define PETSC_DLL_IMPORT
#endif
#if !defined(PETSC_DLLEXPORT)
#define PETSC_DLLEXPORT
#endif
#if !defined(PETSCVEC_DLLEXPORT)
#define PETSCVEC_DLLEXPORT
#endif
#if !defined(PETSCMAT_DLLEXPORT)
#define PETSCMAT_DLLEXPORT
#endif
#if !defined(PETSCDM_DLLEXPORT)
#define PETSCDM_DLLEXPORT
#endif
#if !defined(PETSCKSP_DLLEXPORT)
#define PETSCKSP_DLLEXPORT
#endif
#if !defined(PETSCSNES_DLLEXPORT)
#define PETSCSNES_DLLEXPORT
#endif
#if !defined(PETSCTS_DLLEXPORT)
#define PETSCTS_DLLEXPORT
#endif
#if !defined(PETSCFORTRAN_DLLEXPORT)
#define PETSCFORTRAN_DLLEXPORT
#endif
/* ========================================================================== */

/*
    Defines the interface to MPI allowing the use of all MPI functions.

    PETSc does not use the C++ binding of MPI at ALL. The following flag
    makes sure the C++ bindings are not included. The C++ bindings REQUIRE
    putting mpi.h before ANY C++ include files, we cannot control this
    with all PETSc users.
*/
#define MPICH_SKIP_MPICXX 1
#include "mpi.h"
/*
    Yuck, we need to put stdio.h AFTER mpi.h for MPICH2 with C++ compiler 
    see the top of mpicxx.h

    The MPI STANDARD HAS TO BE CHANGED to prevent this nonsense.
*/
#include <stdio.h>

/*MC
    PetscErrorCode - datatype used for return error code from all PETSc functions

    Level: beginner

.seealso: CHKERRQ, SETERRQ
M*/
typedef int PetscErrorCode;

/*MC

    PetscCookie - A unique id used to identify each PETSc object.
         (internal integer in the data structure used for error
         checking). These are all defined by an offset from the lowest
         one, PETSC_SMALLEST_COOKIE. 

    Level: advanced

.seealso: PetscLogClassRegister(), PetscLogEventRegister(), PetscHeaderCreate()
M*/
typedef int PetscCookie;

/*MC
    PetscEvent - id used to identify PETSc or user events - primarily for logging

    Level: intermediate

.seealso: PetscLogEventRegister(), PetscLogEventBegin() PetscLogEventEnd()
M*/
typedef int PetscEvent;

/*MC
    PetscBLASInt - datatype used to represent 'int' parameters to blas functions.

    Level: intermediate
M*/
typedef int PetscBLASInt;

/*MC
    PetscMPIInt - datatype used to represent 'int' parameters to MPI functions.

    Level: intermediate
M*/
typedef int PetscMPIInt;

/*MC
    PetscEnum - datatype used to pass enum types within PETSc functions.

    Level: intermediate

.seealso: PetscOptionsGetEnum(), PetscOptionsEnum(), PetscBagRegisterEnum()
M*/
typedef enum { ENUM_DUMMY } PetscEnum;

/*MC
    PetscInt - PETSc type that represents integer - used primarily to
      represent size of objects. Its size can be configured with the option
      --with-64-bit-indices - to be either 32bit or 64bit [default 32 bit ints]

   Level: intermediate

.seealso: PetscScalar
M*/
#if defined(PETSC_USE_64BIT_INDICES)
typedef long long PetscInt;
#define MPIU_INT MPI_LONG_LONG_INT
#else
typedef int PetscInt;
#define MPIU_INT MPI_INT
#endif  

/*
      You can use PETSC_STDOUT as a replacement of stdout. You can also change
    the value of PETSC_STDOUT to redirect all standard output elsewhere
*/
extern FILE* PETSC_STDOUT;

/*
      You can use PETSC_STDERR as a replacement of stderr. You can also change
    the value of PETSC_STDERR to redirect all standard error elsewhere
*/
extern FILE* PETSC_STDERR;

#if !defined(PETSC_USE_EXTERN_CXX) && defined(__cplusplus)
/*MC
      PetscPolymorphicSubroutine - allows defining a C++ polymorphic version of 
            a PETSc function that remove certain optional arguments for a simplier user interface

     Not collective

   Synopsis:
   PetscPolymorphicSubroutine(Functionname,(arguments of C++ function),(arguments of C function))
 
   Level: developer

    Example:
      PetscPolymorphicSubroutine(VecNorm,(Vec x,PetscReal *r),(x,NORM_2,r)) generates the new routine
           PetscErrorCode VecNorm(Vec x,PetscReal *r) = VecNorm(x,NORM_2,r)

.seealso: PetscPolymorphicFunction()

M*/
#define PetscPolymorphicSubroutine(A,B,C) PETSC_STATIC_INLINE PetscErrorCode A B {return A C;}

/*MC
      PetscPolymorphicScalar - allows defining a C++ polymorphic version of 
            a PETSc function that replaces a PetscScalar * argument with a PetscScalar argument

     Not collective

   Synopsis:
   PetscPolymorphicScalar(Functionname,(arguments of C++ function),(arguments of C function))
 
   Level: developer

    Example:
      PetscPolymorphicScalar(VecAXPY,(PetscScalar _val,Vec x,Vec y),(&_Val,x,y)) generates the new routine
           PetscErrorCode VecAXPY(PetscScalar _val,Vec x,Vec y) = {PetscScalar _Val = _val; return VecAXPY(&_Val,x,y);}

.seealso: PetscPolymorphicFunction(),PetscPolymorphicSubroutine()

M*/
#define PetscPolymorphicScalar(A,B,C) PETSC_STATIC_INLINE PetscErrorCode A B {PetscScalar _Val = _val; return A C;}

/*MC
      PetscPolymorphicFunction - allows defining a C++ polymorphic version of 
            a PETSc function that remove certain optional arguments for a simplier user interface
            and returns the computed value (istead of an error code)

     Not collective

   Synopsis:
   PetscPolymorphicFunction(Functionname,(arguments of C++ function),(arguments of C function),return type,return variable name)
 
   Level: developer

    Example:
      PetscPolymorphicFunction(VecNorm,(Vec x,NormType t),(x,t,&r),PetscReal,r) generates the new routine
         PetscReal VecNorm(Vec x,NormType t) = {PetscReal r; VecNorm(x,t,&r); return r;}

.seealso: PetscPolymorphicSubroutine()

M*/
#define PetscPolymorphicFunction(A,B,C,D,E) PETSC_STATIC_INLINE D A B {D E; A C;return E;}

#else
#define PetscPolymorphicSubroutine(A,B,C)
#define PetscPolymorphicScalar(A,B,C)
#define PetscPolymorphicFunction(A,B,C,D,E)
#endif

/*
    Extern indicates a PETSc function defined elsewhere
*/
#if !defined(EXTERN)
#define EXTERN extern
#endif

/*
    Defines some elementary mathematics functions and constants.
*/
#include "petscmath.h"

/*
    Declare extern C stuff after including external header files
*/

PETSC_EXTERN_CXX_BEGIN

/*
       Basic PETSc constants
*/

/*E
    PetscTruth - Logical variable. Actually an integer

   Level: beginner

E*/
typedef enum { PETSC_FALSE,PETSC_TRUE } PetscTruth;
extern const char *PetscTruths[];

/*MC
    PETSC_FALSE - False value of PetscTruth

    Level: beginner

    Note: Zero integer

.seealso: PetscTruth, PETSC_TRUE
M*/

/*MC
    PETSC_TRUE - True value of PetscTruth

    Level: beginner

    Note: Nonzero integer

.seealso: PetscTruth, PETSC_FALSE
M*/

/*MC
    PETSC_YES - Alias for PETSC_TRUE

    Level: beginner

    Note: Zero integer

.seealso: PetscTruth, PETSC_TRUE, PETSC_FALSE, PETSC_NO
M*/
#define PETSC_YES            PETSC_TRUE

/*MC
    PETSC_NO - Alias for PETSC_FALSE

    Level: beginner

    Note: Nonzero integer

.seealso: PetscTruth, PETSC_TRUE, PETSC_FALSE, PETSC_YES
M*/
#define PETSC_NO             PETSC_FALSE

/*MC
    PETSC_NULL - standard way of passing in a null or array or pointer

   Level: beginner

   Notes: accepted by many PETSc functions to not set a parameter and instead use
          some default

          This macro does not exist in Fortran; you must use PETSC_NULL_INTEGER, 
          PETSC_NULL_DOUBLE_PRECISION etc

.seealso: PETSC_DECIDE, PETSC_DEFAULT, PETSC_IGNORE, PETSC_DETERMINE

M*/
#define PETSC_NULL           0

/*MC
    PETSC_DECIDE - standard way of passing in integer or floating point parameter
       where you wish PETSc to use the default.

   Level: beginner

.seealso: PETSC_NULL, PETSC_DEFAULT, PETSC_IGNORE, PETSC_DETERMINE

M*/
#define PETSC_DECIDE         -1

/*MC
    PETSC_DEFAULT - standard way of passing in integer or floating point parameter
       where you wish PETSc to use the default.

   Level: beginner

.seealso: PETSC_DECIDE, PETSC_NULL, PETSC_IGNORE, PETSC_DETERMINE

M*/
#define PETSC_DEFAULT        -2


/*MC
    PETSC_IGNORE - same as PETSC_NULL, means PETSc will ignore this argument

   Level: beginner

   Notes: accepted by many PETSc functions to not set a parameter and instead use
          some default

          This macro does not exist in Fortran; you must use PETSC_NULL_INTEGER, 
          PETSC_NULL_DOUBLE_PRECISION etc

.seealso: PETSC_DECIDE, PETSC_DEFAULT, PETSC_NULL, PETSC_DETERMINE

M*/
#define PETSC_IGNORE         PETSC_NULL

/*MC
    PETSC_DETERMINE - standard way of passing in integer or floating point parameter
       where you wish PETSc to compute the required value.

   Level: beginner

.seealso: PETSC_DECIDE, PETSC_DEFAULT, PETSC_IGNORE, PETSC_NULL, VecSetSizes()

M*/
#define PETSC_DETERMINE      PETSC_DECIDE

/*MC
    PETSC_COMM_WORLD - the equivalent of the MPI_COMM_WORLD communicator which represents
           all the processs that PETSc knows about. 

   Level: beginner

   Notes: By default PETSC_COMM_WORLD and MPI_COMM_WORLD are identical unless you wish to 
          run PETSc on ONLY a subset of MPI_COMM_WORLD. In that case create your new (smaller)
          communicator, call it, say comm, and set PETSC_COMM_WORLD = comm BEFORE calling
          PetscInitialize()

.seealso: PETSC_COMM_SELF

M*/
extern MPI_Comm PETSC_COMM_WORLD;

/*MC
    PETSC_COMM_SELF - a duplicate of the MPI_COMM_SELF communicator which represents
           the current process

   Level: beginner

   Notes: PETSC_COMM_SELF and MPI_COMM_SELF are equivalent.

.seealso: PETSC_COMM_WORLD

M*/
#define PETSC_COMM_SELF MPI_COMM_SELF

extern PETSC_DLLEXPORT PetscTruth PetscInitializeCalled;
extern PETSC_DLLEXPORT PetscTruth PetscFinalizeCalled;

EXTERN PetscErrorCode PETSC_DLLEXPORT PetscSetHelpVersionFunctions(PetscErrorCode (*)(MPI_Comm),PetscErrorCode (*)(MPI_Comm));
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscCommDuplicate(MPI_Comm,MPI_Comm*,int*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscCommDestroy(MPI_Comm*);

/*MC
   PetscMalloc - Allocates memory

   Input Parameter:
.  m - number of bytes to allocate

   Output Parameter:
.  result - memory allocated

   Synopsis:
   PetscErrorCode PetscMalloc(size_t m,void **result)

   Level: beginner

   Notes: Memory is always allocated at least double aligned

          If you request memory of zero size it will allocate no space and assign the pointer to 0; PetscFree() will 
          properly handle not freeing the null pointer.

.seealso: PetscFree(), PetscNew()

  Concepts: memory allocation

M*/
#define PetscMalloc(a,b)  ((a != 0) ? (*PetscTrMalloc)((a),__LINE__,__FUNCT__,__FILE__,__SDIR__,(void**)(b)) : (*(b) = 0,0) )

/*MC
   PetscMalloc2 - Allocates 2 chunks of  memory

   Input Parameter:
+  m1 - number of elements to allocate in 1st chunk  (may be zero)
.  t1 - type of first memory elements 
.  m2 - number of elements to allocate in 2nd chunk  (may be zero)
-  t2 - type of second memory elements

   Output Parameter:
+  r1 - memory allocated in first chunk
-  r2 - memory allocated in second chunk

   Synopsis:
   PetscErrorCode PetscMalloc2(size_t m1,type, t1,void **r1,size_t m2,type t2,void **r2)

   Level: developer

   Notes: Memory of first chunk is always allocated at least double aligned

.seealso: PetscFree(), PetscNew(), PetscMalloc()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscMalloc2(m1,t1,r1,m2,t2,r2) (PetscMalloc((m1)*sizeof(t1),r1) || PetscMalloc((m2)*sizeof(t2),r2))
#else
#define PetscMalloc2(m1,t1,r1,m2,t2,r2) (PetscMalloc((m1)*sizeof(t1)+(m2)*sizeof(t2),r1) || (*(r2) = (t2*)(*(r1)+m1),0))
#endif

/*MC
   PetscMalloc3 - Allocates 3 chunks of  memory

   Input Parameter:
+  m1 - number of elements to allocate in 1st chunk  (may be zero)
.  t1 - type of first memory elements 
.  m2 - number of elements to allocate in 2nd chunk  (may be zero)
.  t2 - type of second memory elements
.  m3 - number of elements to allocate in 3rd chunk  (may be zero)
-  t3 - type of third memory elements

   Output Parameter:
+  r1 - memory allocated in first chunk
.  r2 - memory allocated in second chunk
-  r3 - memory allocated in third chunk

   Synopsis:
   PetscErrorCode PetscMalloc3(size_t m1,type, t1,void **r1,size_t m2,type t2,void **r2,size_t m3,type t3,void **r3)

   Level: developer

   Notes: Memory of first chunk is always allocated at least double aligned

.seealso: PetscFree(), PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree3()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscMalloc3(m1,t1,r1,m2,t2,r2,m3,t3,r3) (PetscMalloc((m1)*sizeof(t1),r1) || PetscMalloc((m2)*sizeof(t2),r2) || PetscMalloc((m3)*sizeof(t3),r3))
#else
#define PetscMalloc3(m1,t1,r1,m2,t2,r2,m3,t3,r3) (PetscMalloc((m1)*sizeof(t1)+(m2)*sizeof(t2)+(m3)*sizeof(t3),r1) || (*(r2) = (t2*)(*(r1)+m1),*(r3) = (t3*)(*(r2)+m2),0))
#endif

/*MC
   PetscMalloc4 - Allocates 4 chunks of  memory

   Input Parameter:
+  m1 - number of elements to allocate in 1st chunk  (may be zero)
.  t1 - type of first memory elements 
.  m2 - number of elements to allocate in 2nd chunk  (may be zero)
.  t2 - type of second memory elements
.  m3 - number of elements to allocate in 3rd chunk  (may be zero)
.  t3 - type of third memory elements
.  m4 - number of elements to allocate in 4th chunk  (may be zero)
-  t4 - type of fourth memory elements

   Output Parameter:
+  r1 - memory allocated in first chunk
.  r2 - memory allocated in second chunk
.  r3 - memory allocated in third chunk
-  r4 - memory allocated in fourth chunk

   Synopsis:
   PetscErrorCode PetscMalloc4(size_t m1,type, t1,void **r1,size_t m2,type t2,void **r2,size_t m3,type t3,void **r3,size_t m4,type t4,void **r4)

   Level: developer

   Notes: Memory of first chunk is always allocated at least double aligned

.seealso: PetscFree(), PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree3(), PetscFree4()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscMalloc4(m1,t1,r1,m2,t2,r2,m3,t3,r3,m4,t4,r4) (PetscMalloc((m1)*sizeof(t1),r1) || PetscMalloc((m2)*sizeof(t2),r2) || PetscMalloc((m3)*sizeof(t3),r3) || PetscMalloc((m4)*sizeof(t4),r4))
#else
#define PetscMalloc4(m1,t1,r1,m2,t2,r2,m3,t3,r3,m4,t4,r4) (PetscMalloc((m1)*sizeof(t1)+(m2)*sizeof(t2)+(m3)*sizeof(t3)+(m4)*sizeof(t4),r1) || (*(r2) = (t2*)(*(r1)+m1),*(r3) = (t3*)(*(r2)+m2),*(r4) = (t4*)(*(r3)+m3),0))
#endif

/*MC
   PetscMalloc5 - Allocates 5 chunks of  memory

   Input Parameter:
+  m1 - number of elements to allocate in 1st chunk  (may be zero)
.  t1 - type of first memory elements 
.  m2 - number of elements to allocate in 2nd chunk  (may be zero)
.  t2 - type of second memory elements
.  m3 - number of elements to allocate in 3rd chunk  (may be zero)
.  t3 - type of third memory elements
.  m4 - number of elements to allocate in 4th chunk  (may be zero)
.  t4 - type of fourth memory elements
.  m5 - number of elements to allocate in 5th chunk  (may be zero)
-  t5 - type of fifth memory elements

   Output Parameter:
+  r1 - memory allocated in first chunk
.  r2 - memory allocated in second chunk
.  r3 - memory allocated in third chunk
.  r4 - memory allocated in fourth chunk
-  r5 - memory allocated in fifth chunk

   Synopsis:
   PetscErrorCode PetscMalloc5(size_t m1,type, t1,void **r1,size_t m2,type t2,void **r2,size_t m3,type t3,void **r3,size_t m4,type t4,void **r4,size_t m5,type t5,void **r5)

   Level: developer

   Notes: Memory of first chunk is always allocated at least double aligned

.seealso: PetscFree(), PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree3(), PetscFree4(), PetscFree5()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscMalloc5(m1,t1,r1,m2,t2,r2,m3,t3,r3,m4,t4,r4,m5,t5,r5) (PetscMalloc((m1)*sizeof(t1),r1) || PetscMalloc((m2)*sizeof(t2),r2) || PetscMalloc((m3)*sizeof(t3),r3) || PetscMalloc((m4)*sizeof(t4),r4) || PetscMalloc((m5)*sizeof(t5),r5))
#else
#define PetscMalloc5(m1,t1,r1,m2,t2,r2,m3,t3,r3,m4,t4,r4,m5,t5,r5) (PetscMalloc((m1)*sizeof(t1)+(m2)*sizeof(t2)+(m3)*sizeof(t3)+(m4)*sizeof(t4)+(m5)*sizeof(t5),r1) || (*(r2) = (t2*)(*(r1)+m1),*(r3) = (t3*)(*(r2)+m2),*(r4) = (t4*)(*(r3)+m3),*(r5) = (t5*)(*(r4)+m4),0))
#endif


/*MC
   PetscMalloc6 - Allocates 6 chunks of  memory

   Input Parameter:
+  m1 - number of elements to allocate in 1st chunk  (may be zero)
.  t1 - type of first memory elements 
.  m2 - number of elements to allocate in 2nd chunk  (may be zero)
.  t2 - type of second memory elements
.  m3 - number of elements to allocate in 3rd chunk  (may be zero)
.  t3 - type of third memory elements
.  m4 - number of elements to allocate in 4th chunk  (may be zero)
.  t4 - type of fourth memory elements
.  m5 - number of elements to allocate in 5th chunk  (may be zero)
.  t5 - type of fifth memory elements
.  m6 - number of elements to allocate in 6th chunk  (may be zero)
-  t6 - type of sixth memory elements

   Output Parameter:
+  r1 - memory allocated in first chunk
.  r2 - memory allocated in second chunk
.  r3 - memory allocated in third chunk
.  r4 - memory allocated in fourth chunk
.  r5 - memory allocated in fifth chunk
-  r6 - memory allocated in sixth chunk

   Synopsis:
   PetscErrorCode PetscMalloc6(size_t m1,type, t1,void **r1,size_t m2,type t2,void **r2,size_t m3,type t3,void **r3,size_t m4,type t4,void **r4,size_t m5,type t5,void **r5,size_t m6,type t6,void **r6)

   Level: developer

   Notes: Memory of first chunk is always allocated at least double aligned

.seealso: PetscFree(), PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree3(), PetscFree4(), PetscFree5(), PetscFree6()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscMalloc6(m1,t1,r1,m2,t2,r2,m3,t3,r3,m4,t4,r4,m5,t5,r5,m6,t6,r6) (PetscMalloc((m1)*sizeof(t1),r1) || PetscMalloc((m2)*sizeof(t2),r2) || PetscMalloc((m3)*sizeof(t3),r3) || PetscMalloc((m4)*sizeof(t4),r4) || PetscMalloc((m5)*sizeof(t5),r5) || PetscMalloc((m6)*sizeof(t6),r6))
#else
#define PetscMalloc6(m1,t1,r1,m2,t2,r2,m3,t3,r3,m4,t4,r4,m5,t5,r5,m6,t6,r6) (PetscMalloc((m1)*sizeof(t1)+(m2)*sizeof(t2)+(m3)*sizeof(t3)+(m4)*sizeof(t4)+(m5)*sizeof(t5)+(m6)*sizeof(t6),r1) || (*(r2) = (t2*)(*(r1)+m1),*(r3) = (t3*)(*(r2)+m2),*(r4) = (t4*)(*(r3)+m3),*(r5) = (t5*)(*(r4)+m4),*(r6) = (t6*)(*(r5)+m5),0))
#endif

/*MC
   PetscMalloc7 - Allocates 7 chunks of  memory

   Input Parameter:
+  m1 - number of elements to allocate in 1st chunk  (may be zero)
.  t1 - type of first memory elements 
.  m2 - number of elements to allocate in 2nd chunk  (may be zero)
.  t2 - type of second memory elements
.  m3 - number of elements to allocate in 3rd chunk  (may be zero)
.  t3 - type of third memory elements
.  m4 - number of elements to allocate in 4th chunk  (may be zero)
.  t4 - type of fourth memory elements
.  m5 - number of elements to allocate in 5th chunk  (may be zero)
.  t5 - type of fifth memory elements
.  m6 - number of elements to allocate in 6th chunk  (may be zero)
.  t6 - type of sixth memory elements
.  m7 - number of elements to allocate in 7th chunk  (may be zero)
-  t7 - type of sixth memory elements

   Output Parameter:
+  r1 - memory allocated in first chunk
.  r2 - memory allocated in second chunk
.  r3 - memory allocated in third chunk
.  r4 - memory allocated in fourth chunk
.  r5 - memory allocated in fifth chunk
.  r6 - memory allocated in sixth chunk
-  r7 - memory allocated in sixth chunk

   Synopsis:
   PetscErrorCode PetscMalloc7(size_t m1,type, t1,void **r1,size_t m2,type t2,void **r2,size_t m3,type t3,void **r3,size_t m4,type t4,void **r4,size_t m5,type t5,void **r5,size_t m6,type t6,void **r6,size_t m7,type t7,void **r7)

   Level: developer

   Notes: Memory of first chunk is always allocated at least double aligned

.seealso: PetscFree(), PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree3(), PetscFree4(), PetscFree5(), PetscFree6(), PetscFree7()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscMalloc7(m1,t1,r1,m2,t2,r2,m3,t3,r3,m4,t4,r4,m5,t5,r5,m6,t6,r6,m7,t7,r7) (PetscMalloc((m1)*sizeof(t1),r1) || PetscMalloc((m2)*sizeof(t2),r2) || PetscMalloc((m3)*sizeof(t3),r3) || PetscMalloc((m4)*sizeof(t4),r4) || PetscMalloc((m5)*sizeof(t5),r5) || PetscMalloc((m6)*sizeof(t6),r6) || PetscMalloc((m7)*sizeof(t7),r7))
#else
#define PetscMalloc7(m1,t1,r1,m2,t2,r2,m3,t3,r3,m4,t4,r4,m5,t5,r5,m6,t6,r6,m7,t7,r7) (PetscMalloc((m1)*sizeof(t1)+(m2)*sizeof(t2)+(m3)*sizeof(t3)+(m4)*sizeof(t4)+(m5)*sizeof(t5)+(m6)*sizeof(t6)+(m7)*sizeof(t7),r1) || (*(r2) = (t2*)(*(r1)+m1),*(r3) = (t3*)(*(r2)+m2),*(r4) = (t4*)(*(r3)+m3),*(r5) = (t5*)(*(r4)+m4),*(r6) = (t6*)(*(r5)+m5),*(r7) = (t7*)(*(r6)+m6),0))
#endif

/*MC
   PetscNew - Allocates memory of a particular type, zeros the memory!

   Input Parameter:
.  type - structure name of space to be allocated. Memory of size sizeof(type) is allocated

   Output Parameter:
.  result - memory allocated

   Synopsis:
   PetscErrorCode PetscNew(struct type,((type *))result)

   Level: beginner

.seealso: PetscFree(), PetscMalloc()

  Concepts: memory allocation

M*/
#define PetscNew(A,b)        (PetscMalloc(sizeof(A),(b)) || PetscMemzero(*(b),sizeof(A)))

/*MC
   PetscFree - Frees memory

   Input Parameter:
.   memory - memory to free (the pointer is ALWAYS set to 0 upon sucess)

   Synopsis:
   PetscErrorCode PetscFree(void *memory)

   Level: beginner

   Notes: Memory must have been obtained with PetscNew() or PetscMalloc()

.seealso: PetscNew(), PetscMalloc(), PetscFreeVoid()

  Concepts: memory allocation

M*/
#define PetscFree(a)   ((a) ? ((*PetscTrFree)((a),__LINE__,__FUNCT__,__FILE__,__SDIR__) || ((a = 0),0)) : 0)

/*MC
   PetscFreeVoid - Frees memory

   Input Parameter:
.   memory - memory to free

   Synopsis:
   void PetscFreeVoid(void *memory)

   Level: beginner

   Notes: This is different from PetscFree() in that no error code is returned

.seealso: PetscFree(), PetscNew(), PetscMalloc()

  Concepts: memory allocation

M*/
#define PetscFreeVoid(a) ((*PetscTrFree)((a),__LINE__,__FUNCT__,__FILE__,__SDIR__),(a) = 0)


/*MC
   PetscFree2 - Frees 2 chunks of memory obtained with PetscMalloc2()

   Input Parameter:
+   memory1 - memory to free
-   memory2 - 2nd memory to free


   Synopsis:
   PetscErrorCode PetscFree2(void *memory1,void *memory2)

   Level: developer

   Notes: Memory must have been obtained with PetscMalloc2()

.seealso: PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscFree2(m1,m2)   (PetscFree(m2) || PetscFree(m1))
#else
#define PetscFree2(m1,m2)   (PetscFree(m1))
#endif

/*MC
   PetscFree3 - Frees 3 chunks of memory obtained with PetscMalloc3()

   Input Parameter:
+   memory1 - memory to free
.   memory2 - 2nd memory to free
-   memory3 - 3rd memory to free


   Synopsis:
   PetscErrorCode PetscFree3(void *memory1,void *memory2,void *memory3)

   Level: developer

   Notes: Memory must have been obtained with PetscMalloc3()

.seealso: PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree(), PetscMalloc3()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscFree3(m1,m2,m3)   (PetscFree(m3) || PetscFree(m2) || PetscFree(m1))
#else
#define PetscFree3(m1,m2,m3)   (PetscFree(m1))
#endif

/*MC
   PetscFree4 - Frees 4 chunks of memory obtained with PetscMalloc4()

   Input Parameter:
+   m1 - memory to free
.   m2 - 2nd memory to free
.   m3 - 3rd memory to free
-   m4 - 4th memory to free


   Synopsis:
   PetscErrorCode PetscFree4(void *m1,void *m2,void *m3,void *m4)

   Level: developer

   Notes: Memory must have been obtained with PetscMalloc4()

.seealso: PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree(), PetscMalloc3(), PetscMalloc4()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscFree4(m1,m2,m3,m4)   (PetscFree(m4) || PetscFree(m3) || PetscFree(m2) || PetscFree(m1))
#else
#define PetscFree4(m1,m2,m3,m4)   (PetscFree(m1))
#endif

/*MC
   PetscFree5 - Frees 5 chunks of memory obtained with PetscMalloc5()

   Input Parameter:
+   m1 - memory to free
.   m2 - 2nd memory to free
.   m3 - 3rd memory to free
.   m4 - 4th memory to free
-   m5 - 5th memory to free


   Synopsis:
   PetscErrorCode PetscFree5(void *m1,void *m2,void *m3,void *m4,void *m5)

   Level: developer

   Notes: Memory must have been obtained with PetscMalloc5()

.seealso: PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree(), PetscMalloc3(), PetscMalloc4(), PetscMalloc5()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscFree5(m1,m2,m3,m4,m5)   (PetscFree(m5) || PetscFree(m4) || PetscFree(m3) || PetscFree(m2) || PetscFree(m1))
#else
#define PetscFree5(m1,m2,m3,m4,m5)   (PetscFree(m1))
#endif


/*MC
   PetscFree6 - Frees 6 chunks of memory obtained with PetscMalloc6()

   Input Parameter:
+   m1 - memory to free
.   m2 - 2nd memory to free
.   m3 - 3rd memory to free
.   m4 - 4th memory to free
.   m5 - 5th memory to free
-   m6 - 6th memory to free


   Synopsis:
   PetscErrorCode PetscFree6(void *m1,void *m2,void *m3,void *m4,void *m5,void *m6)

   Level: developer

   Notes: Memory must have been obtained with PetscMalloc6()

.seealso: PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree(), PetscMalloc3(), PetscMalloc4(), PetscMalloc5(), PetscMalloc6()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscFree6(m1,m2,m3,m4,m5,m6)   (PetscFree(m6) || PetscFree(m5) || PetscFree(m4) || PetscFree(m3) || PetscFree(m2) || PetscFree(m1))
#else
#define PetscFree6(m1,m2,m3,m4,m5,m6)   (PetscFree(m1))
#endif

/*MC
   PetscFree7 - Frees 7 chunks of memory obtained with PetscMalloc7()

   Input Parameter:
+   m1 - memory to free
.   m2 - 2nd memory to free
.   m3 - 3rd memory to free
.   m4 - 4th memory to free
.   m5 - 5th memory to free
.   m6 - 6th memory to free
-   m7 - 7th memory to free


   Synopsis:
   PetscErrorCode PetscFree7(void *m1,void *m2,void *m3,void *m4,void *m5,void *m6,void *m7)

   Level: developer

   Notes: Memory must have been obtained with PetscMalloc7()

.seealso: PetscNew(), PetscMalloc(), PetscMalloc2(), PetscFree(), PetscMalloc3(), PetscMalloc4(), PetscMalloc5(), PetscMalloc6(),
          PetscMalloc7()

  Concepts: memory allocation

M*/
#if defined(PETSC_USE_DEBUG)
#define PetscFree7(m1,m2,m3,m4,m5,m6,m7)   (PetscFree(m7) || PetscFree(m6) || PetscFree(m5) || PetscFree(m4) || PetscFree(m3) || PetscFree(m2) || PetscFree(m1))
#else
#define PetscFree7(m1,m2,m3,m4,m5,m6,m7)   (PetscFree(m1))
#endif

EXTERN PETSC_DLLEXPORT PetscErrorCode (*PetscTrMalloc)(size_t,int,const char[],const char[],const char[],void**);
EXTERN PETSC_DLLEXPORT PetscErrorCode (*PetscTrFree)(void*,int,const char[],const char[],const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscSetMalloc(PetscErrorCode (*)(size_t,int,const char[],const char[],const char[],void**),PetscErrorCode (*)(void*,int,const char[],const char[],const char[]));
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscClearMalloc(void);

/*
   Routines for tracing memory corruption/bleeding with default PETSc 
   memory allocation
*/
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMallocDump(FILE *);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMallocDumpLog(FILE *);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMallocGetCurrentUsage(PetscLogDouble *);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMallocGetMaximumUsage(PetscLogDouble *);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMallocDebug(PetscTruth);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMallocValidate(int,const char[],const char[],const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMallocSetDumpLog(void);


/*
    Variable type where we stash PETSc object pointers in Fortran.
    On most machines size(pointer) == sizeof(long) - except windows
    where its sizeof(long long)
*/     

#if (PETSC_SIZEOF_VOID_P) == (PETSC_SIZEOF_LONG)
#define PetscFortranAddr   long
#elif  (PETSC_SIZEOF_VOID_P) == (PETSC_SIZEOF_LONG_LONG)
#define PetscFortranAddr   long long
#else
#error "Unknown size for PetscFortranAddr! Send us a bugreport at petsc-maint@mcs.anl.gov"
#endif

/*E
    PetscDataType - Used for handling different basic data types.

   Level: beginner

.seealso: PetscBinaryRead(), PetscBinaryWrite(), PetscDataTypeToMPIDataType(),
          PetscDataTypeGetSize()

E*/
typedef enum {PETSC_INT = 0,PETSC_DOUBLE = 1,PETSC_COMPLEX = 2, PETSC_LONG = 3 ,PETSC_SHORT = 4,PETSC_FLOAT = 5,
              PETSC_CHAR = 6,PETSC_LOGICAL = 7,PETSC_ENUM = 8,PETSC_TRUTH=9, PETSC_LONG_DOUBLE = 10} PetscDataType;
extern const char *PetscDataTypes[];

#if defined(PETSC_USE_COMPLEX)
#define PETSC_SCALAR PETSC_COMPLEX
#else
#if defined(PETSC_USE_SINGLE)
#define PETSC_SCALAR PETSC_FLOAT
#elif defined(PETSC_USE_LONG_DOUBLE)
#define PETSC_SCALAR PETSC_LONG_DOUBLE
#elif defined(PETSC_USE_INT)
#define PETSC_SCALAR PETSC_INT
#else
#define PETSC_SCALAR PETSC_DOUBLE
#endif
#endif
#if defined(PETSC_USE_SINGLE)
#define PETSC_REAL PETSC_FLOAT
#elif defined(PETSC_USE_LONG_DOUBLE)
#define PETSC_REAL PETSC_LONG_DOUBLE
#elif defined(PETSC_USE_INT)
#define PETSC_REAL PETSC_INT
#else
#define PETSC_REAL PETSC_DOUBLE
#endif
#define PETSC_FORTRANADDR PETSC_LONG

EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDataTypeToMPIDataType(PetscDataType,MPI_Datatype*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDataTypeGetSize(PetscDataType,PetscInt*);

/*
    Basic memory and string operations. These are usually simple wrappers
   around the basic Unix system calls, but a few of them have additional
   functionality and/or error checking.
*/
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMemcpy(void*,const void *,size_t);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscBitMemcpy(void*,PetscInt,const void*,PetscInt,PetscInt,PetscDataType);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMemmove(void*,void *,size_t);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMemzero(void*,size_t);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscMemcmp(const void*,const void*,size_t,PetscTruth *);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrlen(const char[],size_t*);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrcmp(const char[],const char[],PetscTruth *);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrgrt(const char[],const char[],PetscTruth *);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrcasecmp(const char[],const char[],PetscTruth*);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrncmp(const char[],const char[],size_t,PetscTruth*);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrcpy(char[],const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrcat(char[],const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrncat(char[],const char[],size_t);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrncpy(char[],const char[],size_t);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrchr(const char[],char,char *[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrtolower(char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrrchr(const char[],char,char *[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrstr(const char[],const char[],char *[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrrstr(const char[],const char[],char *[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrallocpy(const char[],char *[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscStrreplace(MPI_Comm,const char[],char[],size_t);
#define      PetscStrfree(a) ((a) ? PetscFree(a) : 0) 

/*S
    PetscToken - 'Token' used for managing tokenizing strings

  Level: intermediate

.seealso: PetscTokenCreate(), PetscTokenFind(), PetscTokenDestroy()
S*/
typedef struct {char token;char *array;char *current;} PetscToken;

EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscTokenCreate(const char[],const char,PetscToken**);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscTokenFind(PetscToken*,char *[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT   PetscTokenDestroy(PetscToken*);

/*
   These are  MPI operations for MPI_Allreduce() etc
*/
EXTERN PETSC_DLLEXPORT MPI_Op PetscMaxSum_Op;
#if defined(PETSC_USE_COMPLEX)
EXTERN PETSC_DLLEXPORT MPI_Op PetscSum_Op;
#else
#define PetscSum_Op MPI_SUM
#endif
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscMaxSum(MPI_Comm,const PetscInt[],PetscInt*,PetscInt*);

/*S
     PetscObject - any PETSc object, PetscViewer, Mat, Vec, KSP etc

   Level: beginner

   Note: This is the base class from which all objects appear.

.seealso:  PetscObjectDestroy(), PetscObjectView(), PetscObjectGetName(), PetscObjectSetName()
S*/
typedef struct _p_PetscObject* PetscObject;

/*S
     PetscFList - Linked list of functions, possibly stored in dynamic libraries, accessed
      by string name

   Level: advanced

.seealso:  PetscFListAdd(), PetscFListDestroy()
S*/
typedef struct _n_PetscFList *PetscFList;

/*E
  PetscFileMode - Access mode for a file.

  Level: beginner

  FILE_MODE_READ - open a file at its beginning for reading

  FILE_MODE_WRITE - open a file at its beginning for writing (will create if the file does not exist)

  FILE_MODE_APPEND - open a file at end for writing

  FILE_MODE_UPDATE - open a file for updating, meaning for reading and writing

  FILE_MODE_APPEND_UPDATE - open a file for updating, meaning for reading and writing, at the end

.seealso: PetscViewerFileSetMode()
E*/
typedef enum {FILE_MODE_READ, FILE_MODE_WRITE, FILE_MODE_APPEND, FILE_MODE_UPDATE, FILE_MODE_APPEND_UPDATE} PetscFileMode;

#include "petscviewer.h"
#include "petscoptions.h"

#define PETSC_SMALLEST_COOKIE 1211211
extern PETSC_DLLEXPORT PetscCookie PETSC_LARGEST_COOKIE;
extern PETSC_DLLEXPORT PetscCookie PETSC_OBJECT_COOKIE;
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscCookieRegister(PetscCookie *);

/*
   Routines that get memory usage information from the OS
*/
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscMemoryGetCurrentUsage(PetscLogDouble *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscMemoryGetMaximumUsage(PetscLogDouble *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscMemorySetGetMaximumUsage(void);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscMemoryShowUsage(PetscViewer,const char[]);

EXTERN PetscErrorCode PETSC_DLLEXPORT PetscInfoAllow(PetscTruth,const char []);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscGetTime(PetscLogDouble*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscGetCPUTime(PetscLogDouble*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscSleep(int);

/*
    Initialization of PETSc
*/
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscInitialize(int*,char***,const char[],const char[]);
PetscPolymorphicSubroutine(PetscInitialize,(int *argc,char ***args),(argc,args,PETSC_NULL,PETSC_NULL))
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscInitializeNoArguments(void);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscInitialized(PetscTruth *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFinalized(PetscTruth *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFinalize(void);
EXTERN PetscErrorCode PetscInitializeFortran(void);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscGetArgs(int*,char ***);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscGetArguments(char ***args);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFreeArguments(char **args);

EXTERN PetscErrorCode PETSC_DLLEXPORT PetscEnd(void);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscInitializePackage(const char[]); 

EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOpenMPMerge(PetscMPIInt);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOpenMPSpawn(PetscMPIInt);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOpenMPFinalize(void);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOpenMPRun(MPI_Comm,PetscErrorCode (*)(MPI_Comm,void *),void*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOpenMPFree(MPI_Comm,void*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOpenMPNew(MPI_Comm,PetscInt,void**);

/*
     These are so that in extern C code we can caste function pointers to non-extern C
   function pointers. Since the regular C++ code expects its function pointers to be 
   C++.
*/
typedef void (**PetscVoidStarFunction)(void);
typedef void (*PetscVoidFunction)(void); 
typedef PetscErrorCode (*PetscErrorCodeFunction)(void); 

/*
   PetscTryMethod - Queries an object for a method, if it exists then calls it.
              These are intended to be used only inside PETSc functions.
*/
#define  PetscTryMethod(obj,A,B,C) \
  0;{ PetscErrorCode (*f)B, __ierr; \
    __ierr = PetscObjectQueryFunction((PetscObject)obj,#A,(PetscVoidStarFunction)&f);CHKERRQ(__ierr); \
    if (f) {__ierr = (*f)C;CHKERRQ(__ierr);}\
  }
#define  PetscUseMethod(obj,A,B,C) \
  0;{ PetscErrorCode (*f)B, __ierr; \
    __ierr = PetscObjectQueryFunction((PetscObject)obj,A,(PetscVoidStarFunction)&f);CHKERRQ(__ierr); \
    if (f) {__ierr = (*f)C;CHKERRQ(__ierr);}\
    else {SETERRQ1(PETSC_ERR_SUP,"Cannot locate function %s in object",A);} \
  }
/*
    Functions that can act on any PETSc object.
*/
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectCreate(MPI_Comm,PetscObject*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectCreateGeneric(MPI_Comm, PetscCookie, const char [], PetscObject *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectDestroy(PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectExists(PetscObject,PetscTruth*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectGetComm(PetscObject,MPI_Comm *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectGetCookie(PetscObject,PetscCookie *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectSetType(PetscObject,const char []);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectGetType(PetscObject,const char *[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectSetName(PetscObject,const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectGetName(PetscObject,const char*[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectReference(PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectGetReference(PetscObject,PetscInt*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectDereference(PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectGetNewTag(PetscObject,PetscMPIInt *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectView(PetscObject,PetscViewer);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectCompose(PetscObject,const char[],PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectQuery(PetscObject,const char[],PetscObject *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectComposeFunction(PetscObject,const char[],const char[],void (*)(void));
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectSetFromOptions(PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectSetUp(PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscCommGetNewTag(MPI_Comm,PetscMPIInt *);

/*MC
   PetscObjectComposeFunctionDynamic - Associates a function with a given PETSc object. 
                       
   Collective on PetscObject

   Input Parameters:
+  obj - the PETSc object; this must be cast with a (PetscObject), for example, 
         PetscObjectCompose((PetscObject)mat,...);
.  name - name associated with the child function
.  fname - name of the function
-  ptr - function pointer (or PETSC_NULL if using dynamic libraries)

   Level: advanced

    Synopsis:
    PetscErrorCode PetscObjectComposeFunctionDynamic(PetscObject obj,const char name[],const char fname[],void *ptr)

   Notes:
   To remove a registered routine, pass in a PETSC_NULL rname and fnc().

   PetscObjectComposeFunctionDynamic() can be used with any PETSc object (such as
   Mat, Vec, KSP, SNES, etc.) or any user-provided object. 

   The composed function must be wrapped in a EXTERN_C_BEGIN/END for this to
   work in C++/complex with dynamic link libraries (config/configure.py options --with-shared --with-dynamic)
   enabled.

   Concepts: objects^composing functions
   Concepts: composing functions
   Concepts: functions^querying
   Concepts: objects^querying
   Concepts: querying objects

.seealso: PetscObjectQueryFunction()
M*/
#if defined(PETSC_USE_DYNAMIC_LIBRARIES)
#define PetscObjectComposeFunctionDynamic(a,b,c,d) PetscObjectComposeFunction(a,b,c,0)
#else
#define PetscObjectComposeFunctionDynamic(a,b,c,d) PetscObjectComposeFunction(a,b,c,(PetscVoidFunction)(d))
#endif

EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectQueryFunction(PetscObject,const char[],void (**)(void));
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectSetOptionsPrefix(PetscObject,const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectAppendOptionsPrefix(PetscObject,const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectPrependOptionsPrefix(PetscObject,const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectGetOptionsPrefix(PetscObject,const char*[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectPublish(PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectChangeTypeName(PetscObject,const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectRegisterDestroy(PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectRegisterDestroyAll(void);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscObjectName(PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscTypeCompare(PetscObject,const char[],PetscTruth*);

/*
    Defines PETSc error handling.
*/
#include "petscerror.h"

/*S
     PetscOList - Linked list of PETSc objects, accessable by string name

   Level: advanced

.seealso:  PetscOListAdd(), PetscOListDestroy(), PetscOListFind()
S*/
typedef struct _n_PetscOList *PetscOList;

EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOListDestroy(PetscOList);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOListFind(PetscOList,const char[],PetscObject*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOListReverseFind(PetscOList,PetscObject,char**);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOListAdd(PetscOList *,const char[],PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscOListDuplicate(PetscOList,PetscOList *);

/*
    Dynamic library lists. Lists of names of routines in dynamic 
  link libraries that will be loaded as needed.
*/
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFListAdd(PetscFList*,const char[],const char[],void (*)(void));
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFListDestroy(PetscFList*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFListFind(PetscFList,MPI_Comm,const char[],void (**)(void));
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFListPrintTypes(PetscFList,MPI_Comm,FILE*,const char[],const char[],const char[],const char[]);
#if defined(PETSC_USE_DYNAMIC_LIBRARIES)
#define    PetscFListAddDynamic(a,b,p,c) PetscFListAdd(a,b,p,0)
#else
#define    PetscFListAddDynamic(a,b,p,c) PetscFListAdd(a,b,p,(void (*)(void))c)
#endif
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFListDuplicate(PetscFList,PetscFList *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFListView(PetscFList,PetscViewer);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFListConcat(const char [],const char [],char []);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscFListGet(PetscFList,char ***,int*);

/*S
     PetscDLLibrary - Linked list of dynamics libraries to search for functions

   Level: advanced

   --with-shared --with-dynamic must be used with config/configure.py to use dynamic libraries

.seealso:  PetscDLLibraryOpen()
S*/
typedef struct _n_PetscDLLibrary *PetscDLLibrary;
extern PetscDLLibrary DLLibrariesLoaded;
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDLLibraryRetrieve(MPI_Comm,const char[],char *,int,PetscTruth *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDLLibraryOpen(MPI_Comm,const char[],void **);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDLLibrarySym(MPI_Comm,PetscDLLibrary *,const char[],const char[],void **);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDLLibraryAppend(MPI_Comm,PetscDLLibrary *,const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDLLibraryPrepend(MPI_Comm,PetscDLLibrary *,const char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDLLibraryClose(PetscDLLibrary);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDLLibraryPrintPath(void);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDLLibraryGetInfo(void*,const char[],const char *[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscDLLibraryCCAAppend(MPI_Comm,PetscDLLibrary *,const char[]);

/*
     Useful utility routines
*/
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscSplitOwnership(MPI_Comm,PetscInt*,PetscInt*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscSplitOwnershipBlock(MPI_Comm,PetscInt,PetscInt*,PetscInt*);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscSequentialPhaseBegin(MPI_Comm,PetscMPIInt);
PetscPolymorphicSubroutine(PetscSequentialPhaseBegin,(MPI_Comm comm),(comm,1))
PetscPolymorphicSubroutine(PetscSequentialPhaseBegin,(void),(PETSC_COMM_WORLD,1))
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscSequentialPhaseEnd(MPI_Comm,PetscMPIInt);
PetscPolymorphicSubroutine(PetscSequentialPhaseEnd,(MPI_Comm comm),(comm,1))
PetscPolymorphicSubroutine(PetscSequentialPhaseEnd,(void),(PETSC_COMM_WORLD,1))
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscBarrier(PetscObject);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscMPIDump(FILE*);

#define PetscNot(a) ((a) ? PETSC_FALSE : PETSC_TRUE)
/*
    Defines basic graphics available from PETSc.
*/
#include "petscdraw.h"

/*
    Defines the base data structures for all PETSc objects
*/
#include "private/petscimpl.h"
/*
     Defines PETSc profiling.
*/
#include "petsclog.h"

/*
          For locking, unlocking and destroying AMS memories associated with 
    PETSc objects. Not currently used.
*/
#define PetscPublishAll(v)           0
#define PetscObjectTakeAccess(obj)   0
#define PetscObjectGrantAccess(obj)  0
#define PetscObjectDepublish(obj)    0



/*
      This code allows one to pass a MPI communicator between 
    C and Fortran. MPI 2.0 defines a standard API for doing this.
    The code here is provided to allow PETSc to work with MPI 1.1
    standard MPI libraries.
*/
EXTERN PetscErrorCode MPICCommToFortranComm(MPI_Comm,int *);
EXTERN PetscErrorCode MPIFortranCommToCComm(int,MPI_Comm*);

/*
      Simple PETSc parallel IO for ASCII printing
*/
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscFixFilename(const char[],char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscFOpen(MPI_Comm,const char[],const char[],FILE**);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscFClose(MPI_Comm,FILE*);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscFPrintf(MPI_Comm,FILE*,const char[],...) PETSC_PRINTF_FORMAT_CHECK(3,4);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscPrintf(MPI_Comm,const char[],...)  PETSC_PRINTF_FORMAT_CHECK(2,3);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscSNPrintf(char*,size_t,const char [],...);

/* These are used internally by PETSc ASCII IO routines*/
#include <stdarg.h>
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscVSNPrintf(char*,size_t,const char[],va_list);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscVFPrintf(FILE*,const char[],va_list);

/*MC
    PetscErrorPrintf - Prints error messages.

    Not Collective

   Synopsis:
     PetscErrorCode (*PetscErrorPrintf)(const char format[],...);

    Input Parameters:
.   format - the usual printf() format string 

   Options Database Keys:
+    -error_output_stderr - cause error messages to be printed to stderr instead of the
         (default) stdout
-    -error_output_none to turn off all printing of error messages (does not change the way the 
          error is handled.)

   Notes: Use
     PetscErrorPrintf = PetscErrorPrintfNone; to turn off all printing of error messages (does not change the way the 
           error is handled.) and
     PetscErrorPrintf = PetscErrorPrintfDefault; to turn it back on


  

   Level: developer

    Fortran Note:
    This routine is not supported in Fortran.

    Concepts: error messages^printing
    Concepts: printing^error messages

.seealso: PetscFPrintf(), PetscSynchronizedPrintf(), PetscHelpPrintf()
M*/
EXTERN PETSC_DLLEXPORT PetscErrorCode (*PetscErrorPrintf)(const char[],...);

/*MC
    PetscHelpPrintf - Prints help messages.

    Not Collective

   Synopsis:
     PetscErrorCode (*PetscHelpPrintf)(const char format[],...);

    Input Parameters:
.   format - the usual printf() format string 

   Level: developer

    Fortran Note:
    This routine is not supported in Fortran.

    Concepts: help messages^printing
    Concepts: printing^help messages

.seealso: PetscFPrintf(), PetscSynchronizedPrintf(), PetscErrorPrintf()
M*/
EXTERN PETSC_DLLEXPORT PetscErrorCode  (*PetscHelpPrintf)(MPI_Comm,const char[],...);

EXTERN PetscErrorCode  PetscErrorPrintfDefault(const char [],...);
EXTERN PetscErrorCode  PetscErrorPrintfNone(const char [],...);
EXTERN PetscErrorCode  PetscHelpPrintfDefault(MPI_Comm,const char [],...);

EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscPOpen(MPI_Comm,const char[],const char[],const char[],FILE **);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscPClose(MPI_Comm,FILE*);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscSynchronizedPrintf(MPI_Comm,const char[],...) PETSC_PRINTF_FORMAT_CHECK(2,3);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscSynchronizedFPrintf(MPI_Comm,FILE*,const char[],...) PETSC_PRINTF_FORMAT_CHECK(3,4);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscSynchronizedFlush(MPI_Comm);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscSynchronizedFGets(MPI_Comm,FILE*,size_t,char[]);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscStartMatlab(MPI_Comm,const char[],const char[],FILE**);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscStartJava(MPI_Comm,const char[],const char[],FILE**);
EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscGetPetscDir(const char*[]);

EXTERN PetscErrorCode PETSC_DLLEXPORT  PetscPopUpSelect(MPI_Comm,char*,char*,int,char**,int*);

/*S
     PetscContainer - Simple PETSc object that contains a pointer to any required data

   Level: advanced

.seealso:  PetscObject, PetscContainerCreate()
S*/
extern PetscCookie PETSC_DLLEXPORT PETSC_CONTAINER_COOKIE;
typedef struct _p_PetscContainer*  PetscContainer;
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscContainerGetPointer(PetscContainer,void **);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscContainerSetPointer(PetscContainer,void *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscContainerDestroy(PetscContainer);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscContainerCreate(MPI_Comm,PetscContainer *);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscContainerSetUserDestroy(PetscContainer, PetscErrorCode (*)(void*));

/*
   For use in debuggers 
*/
extern PETSC_DLLEXPORT PetscMPIInt PetscGlobalRank;
extern PETSC_DLLEXPORT PetscMPIInt PetscGlobalSize;

EXTERN PetscErrorCode PETSC_DLLEXPORT PetscIntView(PetscInt,PetscInt[],PetscViewer);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscRealView(PetscInt,PetscReal[],PetscViewer);
EXTERN PetscErrorCode PETSC_DLLEXPORT PetscScalarView(PetscInt,PetscScalar[],PetscViewer);

/*
    Allows accessing Matlab Engine
*/
#include "petscmatlab.h"

/*
      Determine if some of the kernel computation routines use
   Fortran (rather than C) for the numerical calculations. On some machines
   and compilers (like complex numbers) the Fortran version of the routines
   is faster than the C/C++ versions. The flag --with-fortran-kernels
   should be used with config/configure.py to turn these on.
*/
#if defined(PETSC_USE_FORTRAN_KERNELS)

#if !defined(PETSC_USE_FORTRAN_KERNEL_MULTCRL)
#define PETSC_USE_FORTRAN_KERNEL_MULTCRL
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_MULTCSRPERM)
#define PETSC_USE_FORTRAN_KERNEL_MULTCSRPERM
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_MULTAIJ)
#define PETSC_USE_FORTRAN_KERNEL_MULTAIJ
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_MULTTRANSPOSEAIJ)
#define PETSC_USE_FORTRAN_KERNEL_MULTTRANSPOSEAIJ
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_NORM)
#define PETSC_USE_FORTRAN_KERNEL_NORM
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_MAXPY)
#define PETSC_USE_FORTRAN_KERNEL_MAXPY
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_SOLVEAIJ)
#define PETSC_USE_FORTRAN_KERNEL_SOLVEAIJ
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_RELAXAIJ)
#define PETSC_USE_FORTRAN_KERNEL_RELAXAIJ
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_SOLVEBAIJ)
#define PETSC_USE_FORTRAN_KERNEL_SOLVEBAIJ
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_MULTADDAIJ)
#define PETSC_USE_FORTRAN_KERNEL_MULTADDAIJ
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_MDOT)
#define PETSC_USE_FORTRAN_KERNEL_MDOT
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_XTIMESY)
#define PETSC_USE_FORTRAN_KERNEL_XTIMESY
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_AYPX)
#define PETSC_USE_FORTRAN_KERNEL_AYPX
#endif

#if !defined(PETSC_USE_FORTRAN_KERNEL_WAXPY)
#define PETSC_USE_FORTRAN_KERNEL_WAXPY
#endif

#endif

/*
    Macros for indicating code that should be compiled with a C interface,
   rather than a C++ interface. Any routines that are dynamically loaded
   (such as the PCCreate_XXX() routines) must be wrapped so that the name
   mangler does not change the functions symbol name. This just hides the 
   ugly extern "C" {} wrappers.
*/
#if defined(__cplusplus)
#define EXTERN_C_BEGIN extern "C" {
#define EXTERN_C_END }
#else
#define EXTERN_C_BEGIN 
#define EXTERN_C_END 
#endif

/* --------------------------------------------------------------------*/

/*MC
    size - integer variable used to contain the number of processors in
           the relevent MPI_Comm

   Level: beginner

.seealso: rank, comm
M*/

/*MC
    rank - integer variable used to contain the number of this processor relative
           to all in the relevent MPI_Comm

   Level: beginner

.seealso: size, comm
M*/

/*MC
    comm - MPI_Comm used in the current routine or object

   Level: beginner

.seealso: size, rank
M*/

/*MC
    MPI_Comm - the basic object used by MPI to determine which processes are involved in a 
        communication

   Level: beginner

   Note: This manual page is a place-holder because MPICH does not have a manual page for MPI_Comm

.seealso: size, rank, comm, PETSC_COMM_WORLD, PETSC_COMM_SELF
M*/

/*MC
    PetscScalar - PETSc type that represents either a double precision real number, a double precision
       complex number, a single precision real number, a long double or an int - if the code is configured 
       with --with-scalar-type=real,complex --with-precision=single,double,longdouble,int,matsingle


   Level: beginner

.seealso: PetscReal, PassiveReal, PassiveScalar
M*/

/*MC
    PetscReal - PETSc type that represents a real number version of PetscScalar

   Level: beginner

.seealso: PetscScalar, PassiveReal, PassiveScalar
M*/

/*MC
    PassiveScalar - PETSc type that represents a PetscScalar
   Level: beginner

    This is the same as a PetscScalar except in code that is automatically differentiated it is
   treated as a constant (not an indendent or dependent variable)

.seealso: PetscReal, PassiveReal, PetscScalar
M*/

/*MC
    PassiveReal - PETSc type that represents a PetscReal

   Level: beginner

    This is the same as a PetscReal except in code that is automatically differentiated it is
   treated as a constant (not an indendent or dependent variable)

.seealso: PetscScalar, PetscReal, PassiveScalar
M*/

/*MC
    MPIU_SCALAR - MPI datatype corresponding to PetscScalar

   Level: beginner

    Note: In MPI calls that require an MPI datatype that matches a PetscScalar or array of PetscScalars
          pass this value

.seealso: PetscReal, PassiveReal, PassiveScalar, PetscScalar
M*/

/*
     The IBM include files define hz, here we hide it so that it may be used
   as a regular user variable.
*/
#if defined(hz)
#undef hz
#endif

/*  For arrays that contain filenames or paths */


#if defined(PETSC_HAVE_LIMITS_H)
#include <limits.h>
#endif
#if defined(PETSC_HAVE_SYS_PARAM_H)
#include <sys/param.h>
#endif
#if defined(PETSC_HAVE_SYS_TYPES_H)
#include <sys/types.h>
#endif
#if defined(MAXPATHLEN)
#  define PETSC_MAX_PATH_LEN     MAXPATHLEN
#elif defined(MAX_PATH)
#  define PETSC_MAX_PATH_LEN     MAX_PATH
#elif defined(_MAX_PATH)
#  define PETSC_MAX_PATH_LEN     _MAX_PATH
#else
#  define PETSC_MAX_PATH_LEN     4096
#endif

PETSC_EXTERN_CXX_END
#endif


