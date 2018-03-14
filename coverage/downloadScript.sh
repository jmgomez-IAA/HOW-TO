#/bin/bash 


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

