#!/bin/sh
echo y | pacman -Syu
echo y | pacman -Syq nano patch diffutils patchutils 
echo y | pacman -Syq make cmake git man
echo y | pacman -Syq gcc tar tcl
echo y | pacman -Syq mingw-w64-x86_64-gcc
echo y | pacman -Syq mingw-w64-x86_64-expat
echo y | pacman -Syq mingw-w64-x86_64-tcl mingw-w64-x86_64-tk
echo y | pacman -Syq mingw-w64-x86_64-zlib
echo y | pacman -Syq mingw-w64-x86_64-boost  
echo y | pacman -Syq mingw-w64-x86_64-openblas mingw-w64-x86_64-lapack 
echo y | pacman -Syq mingw-w64-x86_64-freeglut mingw-w64-x86_64-glew 
echo y | pacman -Syq mingw-w64-x86_64-dlfcn
echo y | pacman -Syq mingw-w64-x86_64-libpng
echo y | pacman -Syq mingw-w64-x86_64-libgd
echo y | pacman -Syq mingw-w64-x86_64-fftw
echo y | pacman -Syq mingw-w64-x86_64-nlopt   
echo y | pacman -Syq libsqlite libsqlite-devel  
echo y | pacman -Syq mingw-w64-x86_64-libiconv
