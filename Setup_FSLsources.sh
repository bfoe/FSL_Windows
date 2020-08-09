#!/bin/sh
if [ ! -d "$HOME/fslbuild" ]; then
  mkdir $HOME/fslbuild
fi
cd  ~/fslbuild
if [ ! -f "fsl-6.0.3-sources.tar.gz" ]; then
  echo "downloading FSL sources ....."
  # when not available anymore at later dates, 
  # look in https://fsl.fmrib.ox.ac.uk/fsldownloads/oldversions/fsl-6.0.3-sources.tar.gz
  wget https://fsl.fmrib.ox.ac.uk/fsldownloads/fsl-6.0.3-sources.tar.gz
else
  echo "FSL sources already downloaded"
fi
if [ -d "$HOME/fslbuild/fsl" ]; then
  rm -rf $HOME/fslbuild/fsl
fi
echo "uncompressing sources ....."
tar zxf fsl-6.0.3-sources.tar.gz
cd ~
if [ -f "fsl_patch" ]; then
  patch -p0 <fsl_patch
else
  echo "sorry, patch file not found"
fi
if [ ! -d "$HOME/fslbuild/fsl/bin" ]; then
  mkdir $HOME/fslbuild/fsl/bin
fi
# alternatively use:
# ln -s /mingw64/bin/tclsh ~/fslbuild/fsl/bin/fsltclsh
ln -s /usr/bin/tclsh ~/fslbuild/fsl/bin/fsltclsh
mv ~/fslbuild/fsl/extras/include/boost ~/fslbuild/fsl/extras/include/_boost