#!/bin/sh
echo y | pacman -Syuq mingw-w64-x86_64-python-pip
echo y | pacman -Syuq mingw-w64-x86_64-python-numpy
echo y | pacman -Syuq mingw-w64-x86_64-python-scipy
echo y | pacman -Syuq mingw-w64-x86_64-python-h5py
echo y | pacman -Syuq mingw-w64-x86_64-python-scikit-learn
echo y | pacman -Syuq mingw-w64-x86_64-python-six
echo y | pacman -Syuq mingw-w64-x86_64-python-pillow
echo y | pacman -Syuq mingw-w64-x86_64-python-pyparsing
echo y | pacman -Syuq mingw-w64-x86_64-python-ipython
echo y | pacman -Syuq mingw-w64-x86_64-python-matplotlib
echo y | pacman -Syuq mingw-w64-x86_64-python-pyopengl
ln -s /mingw64/bin/python3w.exe /mingw64/bin/pythonw.exe
ln -s /mingw64/bin/python3w.exe /mingw64/bin/fslpythonw.exe
ln -s /mingw64/bin/python.exe /mingw64/bin/fslpython.exe
pip install fslpy


# the below steps are not working yet
#
# instalation of wxpython FAILS
# the native Msys2/MinGW64 package for wxpython is version3 running on Python2.7
# pip install wxpython fails with compiler errors referencing Microsoft VC 
# forcing pip install of windows binary package with:
# pip install -U --platform win_amd64 --no-deps --only-binary=:all: [...]  wxpython
# fails when "import wx" in python
#
# instalation of fsleyes depends on wxpython
# pip install fsleyes


# to test some executables:
#
# this should work (needs more testing):
#   export FSLDIR=/home/user/fslbuild/fsl
#   $FSLDIR/bin/aff2rigid
#   $FSLDIR/bin/bianca
#   $FSLDIR/bin/film_cifti
#   $FSLDIR/bin/fsladd
#   $FSLDIR/bin/fsl_abspath
#   $FSLDIR/bin/possum_interpmot.py
#   $FSLDIR/bin/possum_plot.py

# this does NOT work
#   $FSLDIR/bin/asl_gui 
#   $FSLDIR/bin/mist_1_train
#   $FSLDIR/bin/mist_2_fit
#   $FSLDIR/bin/mist_display
#   $FSLDIR/bin/mist_mesh_utils
#   fslpyton 


