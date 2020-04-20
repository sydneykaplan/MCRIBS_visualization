package require -exact vtkcommon 5.10

if {[info commands ::vtk::init::require_package] != ""} {
  if {[::vtk::init::require_package vtkFilteringTCL 5.10]} {
    package provide vtkfiltering 5.10
  }
} else {
  if {[info commands vtkCardinalSpline] != "" ||
    [::vtk::load_component vtkFilteringTCL] == ""} {
    package provide vtkfiltering 5.10
  }
}
