#!/usr/bin/env python
if __name__ == '__main__':
  import sys
  sys.path.insert(0, '/autofs/space/lyon_006/pubsw/Linux2-2.3-x86_64/packages/petsc/2.3.3-p13/src/petsc-2.3.3-p13/config')
  import configure
  configure_options = ['--with-cc=gcc', '--with-debugging=no', '--with-mpi=1', '--with-x=0', '--download-mpich=1', '--with-shared=0', 'FOPTFLAGS=-O3', '-PETSC_ARCH=linux-gnu-c-opt', '--download-f-blas-lapack=0', 'COPTFLAGS=-O3', 'CXXOPTFLAGS=-O3', '--with-gnu-copyright-code=0', '--with-fc=g77']
  configure.petsc_configure(configure_options)
