package require -exact vtkfiltering 5.10

if {[info commands ::vtk::init::require_package] != ""} {
  if {[::vtk::init::require_package vtkImagingTCL 5.10]} {
    package provide vtkimaging 5.10
  }
} else {
  if {[info commands vtkImageFFT] != "" ||
    [::vtk::load_component vtkImagingTCL] == ""} {
    package provide vtkimaging 5.10
  }
}