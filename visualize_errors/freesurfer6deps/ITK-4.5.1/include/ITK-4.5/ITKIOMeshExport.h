
#ifndef ITKIOMesh_EXPORT_H
#define ITKIOMesh_EXPORT_H

#ifdef ITK_STATIC
#  define ITKIOMesh_EXPORT
#  define ITKIOMesh_HIDDEN
#else
#  ifndef ITKIOMesh_EXPORT
#    ifdef ITKIOMesh_EXPORTS
        /* We are building this library */
#      define ITKIOMesh_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define ITKIOMesh_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef ITKIOMesh_HIDDEN
#    define ITKIOMesh_HIDDEN __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef ITKIOMESH_DEPRECATED
#  define ITKIOMESH_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKIOMESH_DEPRECATED_EXPORT
#  define ITKIOMESH_DEPRECATED_EXPORT ITKIOMesh_EXPORT ITKIOMESH_DEPRECATED
#endif

#ifndef ITKIOMESH_DEPRECATED_NO_EXPORT
#  define ITKIOMESH_DEPRECATED_NO_EXPORT ITKIOMesh_HIDDEN ITKIOMESH_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef ITKIOMESH_NO_DEPRECATED
#    define ITKIOMESH_NO_DEPRECATED
#  endif
#endif

#endif
