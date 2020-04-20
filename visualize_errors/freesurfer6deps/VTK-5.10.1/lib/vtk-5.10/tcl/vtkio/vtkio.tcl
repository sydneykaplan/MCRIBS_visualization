package require -exact vtkfiltering 5.10

if {[info commands ::vtk::init::require_package] != ""} {
  if {[::vtk::init::require_package vtkIOTCL 5.10]} {
    package provide vtkio 5.10
  }
} else {
  if {[info commands vtkBMPReader] != "" ||
    [::vtk::load_component vtkIOTCL] == ""} {
    package provide vtkio 5.10
  }
}
