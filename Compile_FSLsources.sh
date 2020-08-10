#!/bin/sh
cd ~/fslbuild/fsl
export FSLDIR=~/fslbuild/fsl
. ${FSLDIR}/etc/fslconf/fsl.sh
cd $FSLDIR
export CPLUS_INCLUDE_PATH=$FSLDIR/include:$FSLDIR/extras/include:$FSLDIR/src:$FSLDIR/src/misc_c:$FSLDIR/src/fslsurface:$FSLDIR/src/CiftiLib-master/Cifti:$FSLDIR/src/CiftiLib-master/Common:$FSLDIR/extras/src:$FSLDIR/extras/src/libprob:$FSLDIR/extras/src/newran:/mingw64/include:/mingw64/include/libxml++-2.6:/mingw64/lib/libxml++-2.6/include:/mingw64/include/libxml2:/mingw64/include/vtk-8.2:/mingw64/include/sqlite3
export LIBRARY_PATH=$FSLDIR/lib:$FSLDIR/extras/lib:/mingw64/lib
# go
./build