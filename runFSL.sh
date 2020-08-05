export FSLDIR=~/fslbuild/fsl
. ${FSLDIR}/etc/fslconf/fsl.sh
export PATH=$PATH:$FSLDIR/bin
export FSLOUTPUTTYPE=NIFTI
export DISPLAY=localhost:0.0
# alternatively use:
# export FSLTCLSH=/mingw64/bin/tclsh
export FSLTCLSH=/usr/bin/tclsh
export FSLWISH=/mingw64/bin/wish
fsl


