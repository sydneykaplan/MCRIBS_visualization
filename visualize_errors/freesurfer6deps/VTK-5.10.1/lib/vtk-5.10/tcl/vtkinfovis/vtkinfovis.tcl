package require -exact vtkwidgets 5.10

if {[info commands ::vtk::init::require_package] != ""} {
  if {[::vtk::init::require_package vtkInfovisTCL 5.10]} {
    package provide vtkinfovis 5.10
  }
} else {
  if {[info commands vtkGraphLayout] != "" ||
    [::vtk::load_component vtkInfovisTCL] == ""} {
    package provide vtkinfovis 5.10
  }
}