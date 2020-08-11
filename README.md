# FSL_Windows

#
steps to compile **FSL** (https://fsl.fmrib.ox.ac.uk) under Windows using **MSYS2** (https://www.msys2.org/)

#
#
<h3>
<img src="https://twiki.cern.ch/twiki/pub/IPv6/ResourceRepository/work_in_progress.png" width=10% height=10%>
this project is highly Work-In-Pogress
<img src="https://twiki.cern.ch/twiki/pub/IPv6/ResourceRepository/work_in_progress.png" width=10% height=10%>
<br>
<br>
<br>
<br>
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Vienna_Convention_road_sign_B2a.svg/120px-Vienna_Convention_road_sign_B2a.svg.png" width=10% height=10%>
for the moment this project is on hold
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Vienna_Convention_road_sign_B2a.svg/120px-Vienna_Convention_road_sign_B2a.svg.png" width=10% height=10%>
</h3>
#
#

### Install MSYS2/MinGW64
- download and run the installer from https://www.msys2.org/#installation-prerequisites <br>
in the following we will only use the MinGW64 shell, <br>
so you may remove the Desktop Shortcuts for MinGW32 and MSYS2
- copy the files from this repository to the MSYS2 home user folder (C:\msys64\home\user)
- open a MinGW64 shell
- run the **Setup_MinGW64.sh** shellscript from this repository <br>
this will automatically download and install the required packages from the <br>
<a href="https://packages.msys2.org/base">MSYS2 repository</a>


### Download and Patch FSL sourcecode
- run the **Setup_FSLsources.sh** shellscript <br>
this will automatically download and install FSL 6.0.3 sources from the <br>
<a href="https://fsl.fmrib.ox.ac.uk">FMRIB website</a>
(if the download fails (due to a newer FSL version available) edit the script)

### Compile FSL
- run the **Compile_FSLsources.sh** shellscript <br>
(this will take a while and should finish with "Build completed successfully."

### Precombiled Windows Executables
- can be found under the Release tab
<a href="https://github.com/bfoe/FSL_Windows/releases/download/v0.1/fsl-6.0.3-executables.zip">here</a>

#
### Post-Install (only working partially)
- run the **PostInstall.sh** shellscript <br>

### Test FSL with official FEEDS testsuite (only working partially)
- run the **Test_FSLfeeds.sh** shellscript <br>

### Test FSL Graphical User Interface (only working partially)
- run the **runFSL.sh** shellscript <br>
- feel free to play arround
  you probably will find many things that are **NOT WORKING YET**
  
#
### Status
- setup and compilation is fully working
- resulting windows executables are running (and optimized as far as I can get)
- post-install partially implementes with troubles with "**wxpython**" and TCL/TK <br>
(see comments in PostInstall.sh and Test_FSLfeeds.sh) <br>
which is why this project is on **HOLD** for the moment<br>
maybe this gets resolved at some later point in time <br>
- updates to this project, for now, bugfixes only (code locked;)

### Known Problems
- Post-Install not fully implemented yet
- TCL commands do not work yet
- slow: windows executables are ~2x slower than their equivalent running in Virtual Machine
- may have problems when trying to process .xml files in atlas operations (memory leaks ?) <br>
(to see my dirty patches search for "///xmlFree" in "fsl_patch")
- may have problems parsing arguments passed to executables <br>
(to see my dirty patches search for "fsl/src/utils" in "fsl_patch" and lookout for "///") <br>
- there are probably many more bugs, if you find any please don't hesitate to open an issue

### License
- original FSL license (https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/Licence)
- this project's additions/modifications are under the
<a href="https://en.wikipedia.org/wiki/MIT_License">MIT license</a> 
