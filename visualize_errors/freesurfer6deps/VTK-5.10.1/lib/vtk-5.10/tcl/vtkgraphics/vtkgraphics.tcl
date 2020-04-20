package require -exact vtkfiltering 5.10

if {[info commands ::vtk::init::require_package] != ""} {
  if {[::vtk::init::require_package vtkGraphicsTCL 5.10]} {
    package provide vtkgraphics 5.10
  }
} else {
  if {[info commands vtkAxes]  != "" ||
    [::vtk::load_component vtkGraphicsTCL] == ""} {
    package provide vtkgraphics 5.10
  }
}
