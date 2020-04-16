#!/bin/csh

set vtkdir = /opt/freesurfer/lib/vtk/lib/vtk-5.6
pushd $vtkdir
set libs = `ls lib*5.6*`
foreach lib ($libs)
    set newlib = `echo $lib | sed 's/5.6/5.10/'`
    ln -s $vtkdir/$lib $vtkdir/$newlib
end
popd
