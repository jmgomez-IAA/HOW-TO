#! /bin/sh
#
# Simple script to build CPU/BSP
#

if [ $# -ne 2 ] ; then
  echo Usage: $0 CPU BSP
  exit 1
fi

cd /home/rtems/rtems-4.10-work
CPU=$1
BSP=$2

case $CPU in
  arm|avr|bfin|h8300|i386|lm32|m32c|m32r|m68k|\
  mips|nios2|powerpc|sh|sparc|sparc64)
   ;;
  *)
   echo $CPU is an unknown CPU
   exit 1
   ;;
esac
  

rm -rf b-${BSP}
mkdir b-${BSP}
cd b-${BSP}

../rtems/configure --target=${CPU}-rtems4.10 --enable-rtemsbsp=${BSP} \
  --prefix=/home/rtems/rtems-4.10-work/bsp-install \
  --enable-tests=samples >c.log 2>&1 && \
make >b.log 2>&1 
echo $?


