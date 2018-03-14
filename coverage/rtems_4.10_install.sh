#!/bin/bash


# The mpfr code is only needed because I'm building this using an older
# RHEL 5.8 system which doesn't have a new enough version of the libmpfr
# needed for building gcc 4.4.7.

wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/binutils-2.20.1.tar.bz2
wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/gcc-core-4.4.7.tar.bz2
wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/gcc-g++-4.4.7.tar.bz2
wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/gdb-7.3.1.tar.bz2
wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/mpfr-2.4.2.tar.bz2
wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/newlib-1.18.0.tar.gz

wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/binutils-2.20.1-rtems4.10-20100826.diff
wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/gcc-core-4.4.7-rtems4.10-20120314.diff
wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/gcc-g++-4.4.7-rtems4.10-20120314.diff
wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/gdb-7.3.1-rtems4.10-20120918.diff
wget ftp://www.rtems.com/pub/rtems/SOURCES/4.10/newlib-1.18.0-rtems4.10-20110518.diff



tar xfj binutils-2.20.1.tar.bz2
tar xfj gcc-core-4.4.7.tar.bz2
tar xfj gcc-g++-4.4.7.tar.bz2
tar xfj gdb-7.3.1.tar.bz2
tar xfj mpfr-2.4.2.tar.bz2
tar xfz newlib-1.18.0.tar.gz


(cd binutils-2.20.1 && patch -p1 <../binutils-2.20.1-rtems4.10-20100826.diff )
(cd gcc-4.4.7 && patch -p1 <../gcc-core-4.4.7-rtems4.10-20120314.diff )
(cd gcc-4.4.7 && patch -p1 <../gcc-g++-4.4.7-rtems4.10-20120314.diff )
(cd gdb-7.3.1 && patch -p1 <../gdb-7.3.1-rtems4.10-20120918.diff )
(cd newlib-1.18.0 && patch -p1 <../newlib-1.18.0-rtems4.10-20110518.diff )

(cd gcc-4.4.7 && ln -s ../newlib-1.18.0/newlib )

mv *.bz2 *.gz *.diff ../archive/4.10.2

# On the machine with the earliest OS version that will need to run the compilers:

export PATH=$PATH:/usr/local/rtems/rtems-4.10/bin

mkdir build
cd build

../binutils-2.20.1/configure --target=sparc-rtems4.10 --prefix=/usr/local/rtems/rtems-4.10 --disable-nls --without-included-gettext --disable-win32-registry --disable-werror
make all install
rm -rf *

../binutils-2.20.1/configure --target=i386-rtems4.10 --prefix=/usr/local/rtems/rtems-4.10 --disable-nls --without-included-gettext --disable-win32-registry --disable-werror
make all install
rm -rf *

../mpfr-2.4.2/configure --prefix=/usr/local/rtems/rtems-4.10
make all install
rm -rf *

export LD_LIBRARY_PATH=/usr/local/rtems/rtems-4.10/lib

../gcc-4.4.7/configure --target=sparc-rtems4.10 --prefix=/usr/local/rtems/rtems-4.10 --disable-libstdcxx-pch --with-gnu-as --with-gnu-ld --with-newlib --with-mpfr=/usr/local/rtems/rtems-4.10 --with-system-zlib --disable-nls --without-included-gettext --disable-win32-registry --enable-version-specific-runtime-libs --enable-threads --enable-newlib-io-c99-formats --enable-languages="c,c++"
make all install
rm -rf *

../gcc-4.4.7/configure --target=i386-rtems4.10 --prefix=/usr/local/rtems/rtems-4.10 --disable-libstdcxx-pch --with-gnu-as --with-gnu-ld --with-newlib --with-mpfr=/usr/local/rtems/rtems-4.10 --with-system-zlib --disable-nls --without-included-gettext --disable-win32-registry --enable-version-specific-runtime-libs --enable-threads --enable-newlib-io-c99-formats --enable-languages="c,c++"
make all install
rm -rf *

../gdb-7.3.1/configure --target=sparc-rtems4.10 --prefix=/usr/local/rtems/rtems-4.10 
make all install
rm -rf *

../gdb-7.3.1/configure --target=i386-rtems4.10 --prefix=/usr/local/rtems/rtems-4.10 
make all install
rm -rf *

cd ..
rmdir build


# RTEMS

cd ~/rtems

wget ftp://www.rtems.com/pub/rtems/4.10.2/rtems-4.10.2.tar.bz2
wget ftp://www.rtems.com/pub/rtems/4.10.2/rtems-addon-packages-4.10.2.tar.bz2

tar xfj rtems-4.10.2.tar.bz2
tar xfj rtems-addon-packages-4.10.2.tar.bz2

mkdir build
cd build

../rtems-4.10.2/configure --target=sparc-rtems4.10 --prefix=/usr/local/rtems/rtems-4.10 --enable-cxx --disable-rdbg --enable-tests --disable-networking --disable-posix --enable-rtemsbsp=leon3
make all install
rm -rf *

../rtems-4.10.2/configure --target=i386-rtems4.10 --prefix=/usr/local/rtems/rtems-4.10 --enable-cxx --enable-rdbg --disable-tests --enable-networking --disable-posix --enable-rtemsbsp=pc386
make all install
rm -rf *
cd ..

cd rtems-addon-packages-4.10.2

setenv RTEMS_MAKEFILE_PATH /usr/local/rtems/rtems-4.10.2/m68k-rtems4.10.2/uC5282
sh bit

setenv RTEMS_MAKEFILE_PATH /usr/local/rtems/rtems-4.10.2/i386-rtems4.10.2/pc386
sh bit

cd ..


# Extended BSP Routines
#   See http://www.slac.stanford.edu/~strauman/rtems/software.html

wget http://www.slac.stanford.edu/~strauman/rtems/ssrlapps-R_libbspExt_1_6.tgz

tar xfz ssrlapps-R_libbspExt_1_6.tgz

cd build

../ssrlapps-R_libbspExt_1_6/configure --with-rtems-top=/usr/local/rtems/rtems-4.10.2 --enable-std-rtems-installdirs 
make all install
rm -rf *

cd ..
rmdir build
