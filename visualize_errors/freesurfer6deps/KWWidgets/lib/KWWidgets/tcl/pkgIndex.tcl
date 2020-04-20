# KWWidgets Tcl package configuration.

package ifneeded kwwidgetsinit {1.0} {
  namespace eval ::kwwidgets::init {
    proc load_library_package {libName libPath {libPrefix {lib}}} {
      set libExt [info sharedlibextension]
      set currentDirectory [pwd]
      set libFile [file join $libPath "$libPrefix$libName$libExt"]
      if {[catch "cd {$libPath}; load {$libFile}" errorMessage]} {
        puts $errorMessage
      }
      cd $currentDirectory
    }
    set version {1.0}
  }
  package provide kwwidgetsinit {1.0}
}

# Note that we [file dirname [file dirname [info script]]] will be set for install targets
# to some Tcl code that uses "info script". Be aware that "info script" does
# *not* return anything in the current pkgIndex.tcl context, because it
# is not sourced, per say. That is the reason why we need to source
# another file, inside each kits subdirectory. That source will in turn
# perform a "package require" that will call load_library_package successfully
# since "info script" will be defined.

# The is the C++ DLL itself
# Do not mess up with the quoting
package ifneeded KWWidgets {1.0} "
    package require -exact kwwidgetsinit {1.0}
    ::kwwidgets::init::load_library_package KWWidgets {[file dirname [file dirname [info script]]]}
"

# The is the Tcl package itself
# Do not mess up with the quoting

package ifneeded kwwidgets {1.0} "
    package require -exact kwwidgetsinit {1.0}
    if {\[catch {source \[file join {[file dirname [info script]]} kwwidgets kwwidgets.tcl\]} errorMessage\]} {
        puts \$errorMessage
    }
"
