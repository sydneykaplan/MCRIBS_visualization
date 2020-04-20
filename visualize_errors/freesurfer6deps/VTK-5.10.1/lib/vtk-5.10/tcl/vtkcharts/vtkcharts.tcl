package require -exact vtkwidgets 5.10

if {[info commands ::vtk::init::require_package] != ""} {
  if {[::vtk::init::require_package vtkChartsTCL 5.10]} {
    package provide vtkcharts 5.10
  }
} else {
  if {[info commands vtkChartMatrix] != "" ||
    [::vtk::load_component vtkChartsTCL] == ""} {
    package provide vtkcharts 5.10
  }
}
