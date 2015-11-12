Description
===========

The [Windows Installer XML](http://wix.sourceforge.net/) (WiX) is a toolset
that builds Windows installation packages from XML source code. The toolset
supports a command line environment that developers may integrate into their
build processes to build MSI and MSM setup packages. This cookbook installs the
full WiX suite of tools.

Requirements
============

Platform
--------

* Windows Server 2003 R2
* Windows 7
* Windows Server 2008
* Windows Server 2008 R2
* Windows Server 2012
* Windows Server 2012 R2

Cookbooks
---------

Wix requires the .NET framework 4 (4.0, 4.5, 4.5.1, 4.5.2, or 4.6) which can be
installed via another cookbook of your choosing.

* windows

Attributes
==========

* `node['wix']['home']` - location to install WiX files to.  default is
  `%SYSTEMDRIVE%\wix`
* `node['wix']['binaries_zip_download_id']` - CodePlex download id of the WiX binaries to
   install. default is `482066` (WiX v3.6)
* `node['wix']['binaries_zip_checksum']` - SHA256 of the WiX binaries zip file. default is
  `3b0783c3d295cb21a24f3fee68ad7929989771d145c5ac92acc4bc68cf7163b4`
* `node['wix']['installer_download_id']` - CodePlex download id of the WiX installer to
   execute. default is `482065` (WiX v3.6)
* `node['wix']['installer_checksum']` - SHA256 of the WiX installer file. default is
  `6aca5133d4da7d79ec6a2ca658e67b591545fff5b8721b2a74474e51651ead19`
* `node['wix']['package_name']` - Package name of the installer.  default is
  `WiX Toolset v3.6.3303.1`

Usage
=====

default
-------

Downloads and unzips WiX binaries to the location specified by `node['wix']['home']`.
Also ensures `node['wix']['home']` is in the system path.

installer
---------

Downloads and installs WiX using install executable.  This enables WiX integration with Visual Studio.

License and Author
==================

Author:: Seth Chisamore (<schisamo@opscode.com>)

Copyright:: 2011-2013, Opscode, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

