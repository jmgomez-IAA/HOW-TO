#!/bin/bash
#
#execution of the nomad profile with the parameters file for the apbuart.c source code file.

eval find /media/data/proyecto/Nomad_App/flightSoftware/src/ -type f > vera-file-list.txt
eval vera++ -p nomad -x /media/data/proyecto/Nomad_App/vera-report.xml --parameters /media/data/proyecto/Nomad_App/vera-nomad-param -i vera-file-list.txt
eval rm vera-file-list.txt


