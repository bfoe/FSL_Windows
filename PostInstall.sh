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
# until here everything OK - now things get weird




# for wxpython (this is for python2)
pacman -S mingw-w64-x86_64-wxPython
cp -r /mingw64/lib/python2.7/site-packages/wx-3.0-msw /mingw64/lib/python3.8/site-packages/wx
pacman -Rcns mingw-w64-x86_64-wxPython
flseyes
----> error: AttributeError: module 'wx' has no attribute 'App'

# not available
pip install -U --pre -f http://wxpython.org/Phoenix/snapshot-builds/ wxPython_Phoenix
----> ERROR: No matching distribution found for wxPython_Phoenix



# manually download (wget does not find it, why ???)
# https://download.lfd.uci.edu/pythonlibs/w3jqiv8s/Twisted-20.3.0-cp38-cp38-win_amd64.whl


pip install automat constantly hyperlink incremental zope-interface
pip install pyhamcrest
pip install -U --platform win_amd64 --no-deps --only-binary=:all: --target=/mingw64/lib/python3.8/site-packages Twisted-20.3.0-cp38-cp38-win_amd64.whl
pip check

echo y | pacman -Syuq mingw-w64-x86_64-python-lxml
pip install pyfeeds
pip check
feeds

# pacman -Syuq mingw-w64-x86_64-wxPython   (ERROR: this is for python 2.7)
python -m pip install -U --platform win_amd64 --no-deps --only-binary=:all: --target=/mingw64/lib/python3.8/site-packages wxpython
mv /mingw64/lib/python3.8/site-packages/wx/_adv.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_adv.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_aui.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_aui.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_core.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_core.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_dataview.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_dataview.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_glcanvas.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_glcanvas.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_grid.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_grid.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_html.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_html.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_html2.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_html2.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_media.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_media.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_msw.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_msw.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_propgrid.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_propgrid.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_ribbon.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_ribbon.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_richtext.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_richtext.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_stc.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_stc.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_xml.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_xml.pyd
mv /mingw64/lib/python3.8/site-packages/wx/_xrc.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_xrc.pyd
mv /mingw64/lib/python3.8/site-packages/wx/svg/_nanosvg.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/svg/_nanosvg.pyd
export PATH=$PATH:/c/Windows:/c/Windows/system32


#download https://files.pythonhosted.org/packages/59/e0/406e3731bf42bbbf90259580e2ceee0408855fe54e80418d64634d6ab2cc/wxPython-4.1.0-cp38-cp38-win_amd64.whl
python -m pip install -U --platform win_amd64 --no-deps --only-binary=:all: --target=/mingw64/lib/python3.8/site-packages wxPython-4.1.0-cp38-cp38-win_amd64.whl
#download https://wxpython.org/Phoenix/snapshot-builds/wxPython-4.1.1a1.dev4867+07941fc8-cp38-cp38-win_amd64.whl
python -m pip install -U --platform win_amd64 --no-deps --only-binary=:all: --target=/mingw64/lib/python3.8/site-packages wxPython-4.1.1a1.dev4867+07941fc8-cp38-cp38-win_amd64.whl
#download https://files.pythonhosted.org/packages/cb/4f/1e21d3c079c973ba862a18f3be73c2bbe2e6bc25c96d94df605b5cbb494d/wxPython-4.1.0.tar.gz
tar zxf wxPython-4.1.0.tar.gz
cd wxPython-4.1.0
grep -ir "\"win\"" *
sed 's/\"win\"/\"won\"/g' -i buildtools/builder.py
sed 's/\"win\"/\"won\"/g' -i buildtools/build_wxwidgets.py
sed 's/\"win\"/\"won\"/g' -i ext/wxWidgets/build/tools/build-wxwidgets.py
sed 's/\"win\"/\"won\"/g' -i ext/wxWidgets/build/tools/builder.py
sed 's/\"win\"/\"won\"/g' -i ext/wxWidgets/src/xrc/xmlres.cpp
sed 's/\"win\"/\"won\"/g' -i wx/lib/ogl/composit.py
sed 's/\"win\"/\"won\"/g' -i wx/lib/ogl/divided.py
sed 's/\"win\"/\"won\"/g' -i wx/lib/ogl/lines.py
grep -ir "win32" * | grep sys.platform
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i buildtools/build_wxwidgets.py
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i buildtools/backports/pathlib2/scandir.py
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i buildtools/backports/pathlib2/scandir.py
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i bin/waf-2.0.19
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i buildtools/backports/shutil_which.py
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i buildtools/backports/six
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i buildtools/config
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i samples/doodle/setup.py
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i sphinxtools/inheritance.py
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i wx/lib/fancytext.py
sed "s/sys.platform == 'win32'/sys.platform == 'won32'/g" -i wx/lib/plot/plotcanvas.py
python setup.py install



ln -s /mingw64/lib/python3.8/site-packages/wx/_core.cp38-win_amd64.pyd /mingw64/lib/python3.8/site-packages/wx/_core.pyd
rm /mingw64/lib/python3.8/site-packages/wx/_core.pyd
pip check

# error:
test with:
  python
  >>> import wx
  >>> exit()


# for fsleyes
pip install funpack 
pip install fsleyes




# should work (needs more testing):
#   export FSLDIR=/home/user/fslbuild/fsl
#   $FSLDIR/bin/aff2rigid
#   $FSLDIR/bin/bianca
#   $FSLDIR/bin/film_cifti
#   $FSLDIR/bin/fsladd
#   $FSLDIR/bin/fsl_abspath
#   $FSLDIR/bin/possum_interpmot.py
#   $FSLDIR/bin/possum_plot.py

# not worx yet
#   $FSLDIR/bin/asl_gui         (wxPython error)
#   $FSLDIR/bin/mist_1_train    (No module named 'vtkIOMySQLPython')
#   $FSLDIR/bin/mist_2_fit      (No module named 'vtkIOMySQLPython')
#   $FSLDIR/bin/mist_display    (No module named 'vtkIOMySQLPython')
#   $FSLDIR/bin/mist_mesh_utils (No module named 'vtkIOMySQLPython')

# more things no working yet:
#   fslpyton (main problem also is wxPython)


