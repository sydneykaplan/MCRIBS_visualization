/*=========================================================================

  Program:   KWSys - Kitware System Library
  Module:    SystemInformation.hxx.in
  Language:  C++
  Date:      $Date$
  Version:   $Revision$
  Copyright (c) 2005 Insight Consortium. All rights reserved.
  See ITKCopyright.txt or http://www.itk.org/HTML/Copyright.htm for details.


     This software is distributed WITHOUT ANY WARRANTY; without even 
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
     PURPOSE.  See the above copyright notices for more information.
=========================================================================*/
#ifndef itksys_SystemInformation_h
#define itksys_SystemInformation_h


/* Define these macros temporarily to keep the code readable.  */
#if !defined (KWSYS_NAMESPACE) && !itksys_NAME_IS_KWSYS
# define kwsys_stl itksys_stl
# define kwsys_ios itksys_ios
#endif
#include <itksys/stl/string>

namespace itksys
{


// forward declare the implementation class  
class SystemInformationImplementation;
  
class itksys_EXPORT SystemInformation 
{

public:
  SystemInformation ();
  ~SystemInformation ();

  const char * GetVendorString();
  const char * GetVendorID();
  kwsys_stl::string GetTypeID();
  kwsys_stl::string GetFamilyID();
  kwsys_stl::string GetModelID();
  kwsys_stl::string GetSteppingCode();
  const char * GetExtendedProcessorName();
  const char * GetProcessorSerialNumber();
  int GetProcessorCacheSize();
  unsigned int GetLogicalProcessorsPerPhysical();
  float GetProcessorClockFrequency();
  int GetProcessorAPICID();
  int GetProcessorCacheXSize(long int);
  bool DoesCPUSupportFeature(long int);
  
  const char * GetOSName();
  const char * GetHostname();
  const char * GetOSRelease();
  const char * GetOSVersion();
  const char * GetOSPlatform();

  bool Is64Bits();

  unsigned int GetNumberOfLogicalCPU(); // per physical cpu
  unsigned int GetNumberOfPhysicalCPU();

  bool DoesCPUSupportCPUID();

  // Retrieve memory information in megabyte.
  unsigned long GetTotalVirtualMemory();
  unsigned long GetAvailableVirtualMemory();
  unsigned long GetTotalPhysicalMemory();
  unsigned long GetAvailablePhysicalMemory();  

  /** Run the different checks */
  void RunCPUCheck();
  void RunOSCheck();
  void RunMemoryCheck();
private:
  SystemInformationImplementation* Implementation;

};
} // namespace itksys

/* Undefine temporary macros.  */
#if !defined (KWSYS_NAMESPACE) && !itksys_NAME_IS_KWSYS
# undef kwsys_stl
# undef kwsys_ios
#endif

#endif
