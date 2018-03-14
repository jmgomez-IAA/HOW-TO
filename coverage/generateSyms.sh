#!/bin/bash
# Generate a file with the symbols of the flightsoftware
#The file is prepared to use in root directory of the Debug/src
# /media/data/proyecto/Nomad_App/flightSoftware/Debug/src


TARGET=sparc-rtems4.10
DIR=/media/data/proyecto/Nomad_App/flightSoftware/Debug/src

#OBJ_FILES=$(find ${DIR} -name "*.o")
OBJ_FILES=$(find . -name "*.o")

echo $OBJ_FILES
verbose="yes"

for l in $OBJ_FILES
  do
    if [ -r ${l} ] ; then
      test ${verbose} = "yes" && echo Generating symbols from ${l} >&2
      # echo "========= START $l"
      ${TARGET}-nm --format=sysv $l | grep "FUNC|" | \
        cut -d'|' -f1 | sed -e 's/ *$//' -e "s,$, ${l},"

      # echo "========= END $l"

    # no else
      # We keep a complete CURRENT list and some are not in old versions
    fi
done
