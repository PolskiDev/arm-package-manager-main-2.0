[README.txt]

(ARM) Universal Portable Package Manager
Version: 2.0-beta


Why another package manager?
  Arm was designed based on Debian's DPKG,
  adding some features from FreeBSD PORTS
  and other details from RedHat Enterprise
  Linux.
  
  ARM/SPEC.py - (Configuration File)
  
  (Icon, Shortcut and Binary):
  usr/share/applications/helloworld-arm.desktop
  opt/helloworld_arm/helloworld.bin
  opt/helloworld_arm/helloworld.png
  
  
  <helloworld_arm> folder must be renamed!
  If doesn't it, incompatibilities may occur.
  Don't forget to update to the new name of
  <helloworld_arm> on ARM/SPEC.py


  <helloworld.bin> and <helloworld.png> should be renamed,
  however it's not mandatory. The package can be installed
  without renaming the binary and the icon. Don't forget
  to update the renaming on ARM/SPEC.py, if you did it.

Gabriel Margarido



(Arm needs to work):
- sudo
- chmod
- tar
- ruby
- irb
- python3 tkinter
- python3

(Arm Package Manager):
Install with:		sudo make install
Uninstall with:		sudo make remove




[BINARY PACKAGES]
Helloworld.1.0.amd64             Folder/Directory
Helloworld.1.0.amd64.arm         Arm binary-based package
---------------------------------------------------------

**Get package template** (CLI/GUI)
sudo arm-pkg -src <package>.<version>.<arch>
sudo arm-pkg -src-gui <package>.<version>.<arch>


**Build Arm package**
sudo arm-pkg -gen <package>.<version>.<arch>


*Install Arm package**
sudo arm-pkg -i <package>.<version>.<arch>.arm
sudo arm-pkg -u <package>.<version>.<arch>.arm




[SOURCE-BASED PACKAGES]
Helloworld.1.0             Folder/Directory
Helloworld.1.0.src.arm     Arm source-based package
---------------------------------------------------

**Get Arm (source-based) package template**
sudo arm-src -src <package>.<version>


**Build Arm source-based package**
sudo arm-src -gen <package>.<version>


**Compile and install Arm source-based package**
sudo arm-src -i <package>.<version>
sudo arm-src -u <package>.<version>



