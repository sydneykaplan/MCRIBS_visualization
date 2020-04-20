package require -exact vtkwidgets 5.10

if {[info commands ::vtk::init::require_package] != ""} {
  if {[::vtk::init::require_package vtkGeovisTCL 5.10]} {
    package provide vtkgeovis 5.10
  }
} else {
  if {[info commands vtkGeoMath] != "" ||
    [::vtk::load_component vtkGeovisTCL] == ""} {
    package provide vtkgeovis 5.10
  }
}
