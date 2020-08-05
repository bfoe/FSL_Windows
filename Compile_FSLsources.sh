#!/bin/sh
cd ~/fslbuild/fsl
export FSLDIR=~/fslbuild/fsl
. ${FSLDIR}/etc/fslconf/fsl.sh
cd $FSLDIR
# alternatively use:
# export FSLTCLSH=/mingw64/bin/tclsh
export FSLTCLSH=/usr/bin/tclsh
export FSLWISH=/mingw64/bin/wish
export RANLIB=ranlib
export CPLUS_INCLUDE_PATH=$FSLDIR/include:$FSLDIR/extras/include:$FSLDIR/src:$FSLDIR/src/misc_c:$FSLDIR/src/fslsurface:$FSLDIR/src/CiftiLib-master/Cifti:$FSLDIR/src/CiftiLib-master/Common:$FSLDIR/extras/src:$FSLDIR/extras/src/libprob:$FSLDIR/extras/src/newran:/mingw64/include:
export C_INCLUDE_PATH=$CPLUS_INCLUDE_PATH
export GCC_INCLUDE_DI=$CPLUS_INCLUDE_PATH
export LIBRARY_PATH=$FSLDIR/lib:$FSLDIR/extras/lib:/mingw64/lib
# go
./build