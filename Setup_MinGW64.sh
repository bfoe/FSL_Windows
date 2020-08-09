#!/bin/sh
pacman -Fy
echo y | pacman -Syu
echo y | pacman -Syuq nano patch diffutils patchutils 
echo y | pacman -Syuq git man tar tcl
echo y | pacman -Syuq mingw-w64-x86_64-gcc
echo y | pacman -Syuq mingw-w64-x86_64-make
ln -s /mingw64/bin/mingw32-make.exe /mingw64/bin/make.exe
echo y | pacman -Syuq mingw-w64-x86_64-cmake
echo y | pacman -Syuq mingw-w64-x86_64-expat
echo y | pacman -Syuq mingw-w64-x86_64-tcl mingw-w64-x86_64-tk
echo y | pacman -Syuq mingw-w64-x86_64-zlib
echo y | pacman -Syuq mingw-w64-x86_64-boost  
echo y | pacman -Syuq mingw-w64-x86_64-openblas mingw-w64-x86_64-lapack 
echo y | pacman -Syuq mingw-w64-x86_64-freeglut mingw-w64-x86_64-glew 
echo y | pacman -Syuq mingw-w64-x86_64-dlfcn
echo y | pacman -Syuq mingw-w64-x86_64-libpng
echo y | pacman -Syuq mingw-w64-x86_64-libgd
echo y | pacman -Syuq mingw-w64-x86_64-fftw
echo y | pacman -Syuq mingw-w64-x86_64-nlopt   
echo y | pacman -Syuq mingw-w64-x86_64-libiconv
echo y | pacman -Syuq mingw-w64-x86_64-libxml++2.6
ln -s /mingw64/x86_64-w64-mingw32/include/GL /mingw64/include/OpenGL
echo y | pacman -Syuq pacman -S mingw-w64-x86_64-qt5
echo y | pacman -Syuq pacman -S mingw-w64-x86_64-vtk

echo "Installed packages:"
pacman -Sl
