#ifndef   DEF_IMAGES_H
#define   DEF_IMAGES_H

#include  <bicpl/objects.h>

#ifndef  public
#define       public   extern
#define       public_was_defined_here
#endif

#include  <bicpl/image_prototypes.h>

#ifdef  public_was_defined_here
#undef       public
#undef       public_was_defined_here
#endif

#endif
