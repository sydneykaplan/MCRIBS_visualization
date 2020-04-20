/*=========================================================================

  Module:    $RCSfile: vtkKWWidgetWithLabelSubclass.h.in,v $

  Copyright (c) Kitware, Inc.
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME vtkKWMultiColumnListWithScrollbarsWithLabel - a vtkKWMultiColumnListWithScrollbars associated to a vtkKWLabel
// .SECTION Description
// This class creates a composite widget associating a vtkKWMultiColumnListWithScrollbars to a
// vtkKWLabel.
// As a subclass of vtkKWWidgetWithLabel, it inherits a label and methods to
// set its position and visibility. Note that the default label position 
// implemented in this class is on the left of the vtkKWMultiColumnListWithScrollbars, but 
// specific positions listed in vtkKWWidgetWithLabel are supported as well.
// @ingroup kwwidgets_autogenerated_widget_with_label_group
// .SECTION Note
// This class and the corresponding code were 
// \subpage kwwidgets_autogenerated_page "generated automatically" by
// instantiating the <tt>Templates/vtkKWWidgetWithLabelSubclass.h.in</tt>
// and <tt>Templates/vtkKWWidgetWithLabelSubclass.cxx.in</tt> files for 
// the type vtkKWMultiColumnListWithScrollbars. Classes related to the same template can be found
// in the \ref kwwidgets_autogenerated_widget_with_label_group section.
// .SECTION See Also
// vtkKWWidgetWithLabel vtkKWMultiColumnListWithScrollbars

#ifndef __vtkKWMultiColumnListWithScrollbarsWithLabel_h
#define __vtkKWMultiColumnListWithScrollbarsWithLabel_h

#include "vtkKWWidgetWithLabel.h"

class vtkKWMultiColumnListWithScrollbars;

class KWWidgets_EXPORT vtkKWMultiColumnListWithScrollbarsWithLabel : public vtkKWWidgetWithLabel
{
public:
  static vtkKWMultiColumnListWithScrollbarsWithLabel* New();
  vtkTypeRevisionMacro(vtkKWMultiColumnListWithScrollbarsWithLabel, vtkKWWidgetWithLabel);
  void PrintSelf(ostream& os, vtkIndent indent);

  // Description:
  // Get the vtkKWMultiColumnListWithScrollbars that is being labeled
  virtual vtkKWMultiColumnListWithScrollbars* GetWidget();
  
  // Description:
  // Set the layout to allow the widget that is labeled to expand
  // horizontally automatically 
  virtual void SetExpandWidget(int);
  vtkBooleanMacro(ExpandWidget, int);
  vtkGetMacro(ExpandWidget, int);

  // Description:
  // Set the string that enables balloon help for this widget.
  // Override to pass down to children.
  virtual void SetBalloonHelpString(const char *str);

  // Description:
  // Update the "enable" state of the object and its internal parts.
  // Depending on different Ivars (this->Enabled, the application's 
  // Limited Edition Mode, etc.), the "enable" state of the object is updated
  // and propagated to its internal parts/subwidgets. This will, for example,
  // enable/disable parts of the widget UI, enable/disable the visibility
  // of 3D widgets, etc.
  virtual void UpdateEnableState();

protected:
  vtkKWMultiColumnListWithScrollbarsWithLabel();
  ~vtkKWMultiColumnListWithScrollbarsWithLabel();

  // Description:
  // Create the widget
  virtual void CreateWidget();

  // Description:
  // Expand the widget that is being labeled
  int ExpandWidget;

  // Description:
  // Pack or repack the widget. To be implemented by subclasses.
  virtual void Pack();

  // Description:
  // Internal widget
  vtkKWMultiColumnListWithScrollbars *Widget;

private:

  vtkKWMultiColumnListWithScrollbarsWithLabel(const vtkKWMultiColumnListWithScrollbarsWithLabel&); // Not implemented
  void operator=(const vtkKWMultiColumnListWithScrollbarsWithLabel&); // Not implemented
};

#endif
