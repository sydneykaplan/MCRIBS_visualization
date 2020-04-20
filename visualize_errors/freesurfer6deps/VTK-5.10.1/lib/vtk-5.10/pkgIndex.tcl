# Visualization Toolkit (VTK) Tcl package configuration.

package ifneeded vtkinit {5.10} {
  namespace eval ::vtk::init {
    proc load_library_package {libName libPath {libPrefix {lib}}} {
      set libExt [info sharedlibextension]
      set currentDirectory [pwd]
      set libFile [file join $libPath "$libPrefix$libName$libExt"]
      if {[catch "cd {$libPath}; load {$libFile}" errorMessage]} {
        puts $errorMessage
      }
      cd $currentDirectory
    }
    proc require_package {name {version {5.10}}} {
      if {[catch "package require -exact $name $version" errorMessage]} {
        puts $errorMessage
        return 0
      } else {
        return 1
      }
    }
    set version {5.10}
    set kits {}
    foreach kit { base Common Filtering IO Imaging Graphics
                  Rendering VolumeRendering
                  Hybrid Widgets
                   Geovis 
                  Infovis Views
                  Charts 
                  } {
      lappend kits [string tolower "${kit}"]
    }
  }
  package provide vtkinit {5.10}
}

foreach kit { Common Filtering IO Imaging Graphics
              Rendering VolumeRendering
              Hybrid Widgets
               Geovis 
              Infovis Views
              Charts 
              } {
  package ifneeded "vtk${kit}TCL" {5.10} "
    package require -exact vtkinit {5.10}
    ::vtk::init::load_library_package {vtk${kit}TCL} {[file dirname [info script]]}
  "
  package ifneeded "vtk[string tolower ${kit}]" {5.10} "
    package require -exact vtkinit {5.10}
    if {\[catch {source \[file join {[file dirname [info script]]/tcl} {vtk[string tolower ${kit}]} {vtk[string tolower ${kit}].tcl}\]} errorMessage\]} {
      puts \$errorMessage
    }
  "
}

foreach src {vtk vtkbase vtkinteraction vtktesting} {
  package ifneeded ${src} {5.10} "
    package require -exact vtkinit {5.10}
    if {\[catch {source \[file join {[file dirname [info script]]/tcl} {$src} {$src.tcl}\]} errorMessage\]} {
      puts \$errorMessage
    }
  "
}
