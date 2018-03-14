#!/bin/sh
##### SCRIPT INSTALACIÓN IMPRESORAS IAA ######
echo "###### SCRIPT INSTALACION IMPRESORAS EN COLOR DEL  IAA (LINUX) ########"
echo "#######################################################################"
sleep 2
echo ""

/usr/sbin/lpadmin -p mpc6001 -v lpd://mpc6001.iaa.es -P postscript.ppd -E
/usr/sbin/lpadmin -p mpc6001d -v lpd://mpc6001.iaa.es -P postscript.ppd -E

/usr/bin/lpoptions -p mpc6001 -o media=A4
/usr/bin/lpoptions -p mpc6001d -o media=A4 -o sides=two-sided-long-edge

/usr/sbin/lpadmin -p mpc4000 -v lpd://mpc4000.iaa.es -P postscript.ppd -E
/usr/sbin/lpadmin -p mpc4000d -v lpd://mpc4000.iaa.es -P postscript.ppd -E

/usr/bin/lpoptions -p mpc4000 -o media=A4
/usr/bin/lpoptions -p mpc4000d -o media=A4 -o sides=two-sided-long-edge

/usr/sbin/lpadmin -p mpc3500 -v lpd://mpc3500.iaa.es -P postscript.ppd -E
/usr/sbin/lpadmin -p mpc3500d -v lpd://mpc3500.iaa.es -P postscript.ppd -E

/usr/bin/lpoptions -p mpc3500 -o media=A4
/usr/bin/lpoptions -p mpc3500d -o media=A4 -o sides=two-sided-long-edge

/usr/sbin/lpadmin -p mpc3502 -v lpd://mpc3502.iaa.es -P postscript.ppd -E
/usr/sbin/lpadmin -p mpc3502d -v lpd://mpc3502.iaa.es -P postscript.ppd -E

/usr/bin/lpoptions -p mpc3502 -o media=A4
/usr/bin/lpoptions -p mpc3502 -o media=A4 -o sides=two-sided-long-edge

/usr/sbin/lpadmin -p mpc6002 -v lpd://mpc6002.iaa.es -P postscript.ppd -E
/usr/sbin/lpadmin -p mpc6002d -v lpd://mpc6002.iaa.es -P postscript.ppd -E

/usr/bin/lpoptions -p mpc6002 -o media=A4
/usr/bin/lpoptions -p mpc6002d -o media=A4 -o sides=two-sided-long-edge

echo  ""
echo  "#########################################################"
echo  " Por favor introduce la cola por defecto"
echo  " Las colas de COLOR disponibles son:"
echo  ""
echo  " mpc6002   -> Escalera Edificio A"
echo  " mpc6002d  -> Escalera Edificio A (Doble Cara)"
echo  " mpc6001   -> 1ª Planta Edificio A"
echo  " mpc6001d  -> 1ª Planta Edificio A (Doble Cara)" 
echo  " mpc4000   -> Biblioteca Edificio A"
echo  " mpc4000d  -> Biblioteca Edificio A (Doble Cara)"
echo  " mpc3500   -> Edificio C"
echo  " mpc3500d  -> Edificio C (Doble Cara)"
echo  " mpc3502   -> 1ª Planta Edificio B"
echo  " mpc3502d  -> 1ª Planta Edificio B (Doble Cara)"
echo  ""
read defaultprinter
/usr/bin/lpoptions -d $defaultprinter > trash.txt
rm -rf trash.txt
echo ""
echo  "###########                             #################"
sleep 1
echo  "###########             FIN             #################"


