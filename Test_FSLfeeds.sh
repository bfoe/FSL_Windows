#!/bin/sh
cd  ~/fslbuild
if [ ! -f "fsl-6.0.3-feeds.tar.gz" ]; then
  echo "downloading FSL FEEDS Testsuite ....."
  # when not available anymore at later dates, 
  # look in https://fsl.fmrib.ox.ac.uk/fsldownloads/oldversions/fsl-6.0.3-feeds.tar.gz
  wget https://fsl.fmrib.ox.ac.uk/fsldownloads/fsl-6.0.3-feeds.tar.gz
else
  echo "FSL FEEDS Testsuite already downloaded"
fi
if [ -d "$HOME/fslbuild/feeds" ]; then
  rm -rf $HOME/fslbuild/feeds
fi
echo "uncompressing FSL FEEDS Testsuite ....."
tar zxvf fsl-6.0.3-feeds.tar.gz >/dev/nul
# prepare to run
export FSLDIR=~/fslbuild/fsl
. ${FSLDIR}/etc/fslconf/fsl.sh
export PATH=$PATH:$FSLDIR/bin
export DISPLAY=localhost:0.0
# alternatively use
# export FSLTCLSH=/mingw64/bin/tclsh
export FSLTCLSH=/usr/bin/tclsh
export FSLOUTPUTTYPE=NIFTI_GZ
export FEEDSDIR=~/fslbuild/feeds
cd ~/fslbuild/feeds
# run what works (what throws errors is commented out)
~/fslbuild/feeds/RUN fugue
~/fslbuild/feeds/RUN susan
#~/fslbuild/feeds/RUN sienax   #------------> error (requires fslpyton from postinstall)
#~/fslbuild/feeds/RUN bet2     #------------> error (supposedly a tcl problem)
#~/fslbuild/feeds/RUN feat     #------------> error (supposedly a tcl problem)
#~/fslbuild/feeds/RUN melodic  #------------> error (supposedly a tcl problem)
#~/fslbuild/feeds/RUN first    #------------> error (supposedly a tcl problem)
#~/fslbuild/feeds/RUN fdt      #------------> error (supposedly a tcl problem)
~/fslbuild/feeds/RUN fnirt
# (uncomment this when (if at any time ??) all of the above work
#~/fslbuild/feeds/RUN all
