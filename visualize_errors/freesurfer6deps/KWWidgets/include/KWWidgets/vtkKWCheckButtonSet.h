/*=========================================================================

  Module:    $RCSfile: vtkKWWidgetSetSubclass.h.in,v $

  Copyright (c) Kitware, Inc.
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME vtkKWCheckButtonSet - a concrete set of vtkKWCheckButton
// .SECTION Description
// A composite widget to conveniently store, allocate, create and pack a 
// set of vtkKWCheckButton. 
// Each vtkKWCheckButton is created, removed or queried based
// on a unique ID provided by the user (ids are *not* handled by the class
// since it is likely that they will be defined as enum's or #define by
// the user for easier retrieval).
// As a subclass of vtkKWWidgetSet, it inherits methods to set the widgets
// visibility individually, set the layout parameters, and query each widget.
// Widgets are packed (gridded) in the order they were added.
// @ingroup kwwidgets_autogenerated_widget_set_group
// .SECTION Note
// This class and the corresponding code were 
// \subpage kwwidgets_autogenerated_page "generated automatically" by
// instantiating the <tt>Templates/vtkKWWidgetSetSubclass.h.in</tt>
// and <tt>Templates/vtkKWWidgetSetSubclass.cxx.in</tt> files for 
// the type vtkKWCheckButton. Classes related to the same template can be found
// in the \ref kwwidgets_autogenerated_widget_set_group section.
// .SECTION See Also
// vtkKWWidgetSet vtkKWCheckButton

#ifndef __vtkKWCheckButtonSet_h
#define __vtkKWCheckButtonSet_h

#include "vtkKWWidgetSet.h"

class vtkKWCheckButton;

class KWWidgets_EXPORT vtkKWCheckButtonSet : public vtkKWWidgetSet
{
public:
  static vtkKWCheckButtonSet* New();
  vtkTypeRevisionMacro(vtkKWCheckButtonSet,vtkKWWidgetSet);
  void PrintSelf(ostream& os, vtkIndent indent);

  // Description:
  // Add a vtkKWCheckButton to the end of the set.
  // The id has to be unique among the set.
  // Return a pointer to the vtkKWCheckButton, or NULL on error.
  virtual vtkKWCheckButton* AddWidget(int id);

  // Description:
  // Insert a vtkKWCheckButton at a specific position in the set.
  // The id has to be unique among the set.
  // Return a pointer to the vtkKWCheckButton, or NULL on error.
  virtual vtkKWCheckButton* InsertWidget(int id, int pos);

  // Description:
  // Get a vtkKWCheckButton from the set, given its unique id.
  // Return a pointer to the vtkKWCheckButton, or NULL on error.
  virtual vtkKWCheckButton* GetWidget(int id);

protected:
  vtkKWCheckButtonSet() {};
  ~vtkKWCheckButtonSet() {};

  // Helper methods

  virtual vtkKWWidget* AllocateAndCreateWidget();

private:
  vtkKWCheckButtonSet(const vtkKWCheckButtonSet&); // Not implemented
  void operator=(const vtkKWCheckButtonSet&); // Not implemented
};

#endif
