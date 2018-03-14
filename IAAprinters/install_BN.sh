#!/bin/sh
##### SCRIPT INSTALACIÓN IMPRESORAS IAA ######
echo "###### SCRIPT INSTALACION IMPRESORAS B&N IAA (LINUX) ########"
echo "#############################################################"
sleep 2

/usr/sbin/lpadmin -p mp6001 -v lpd://mpc6001.iaa.es -P pxlmono-Ricoh.ppd -E
/usr/sbin/lpadmin -p mp6001d -v lpd://mpc6001.iaa.es -P pxlmono-Ricoh.ppd -E

/usr/bin/lpoptions -p mp6001 -o media=A4
/usr/bin/lpoptions -p mp6001d -o media=A4 -o sides=two-sided-long-edge

/usr/sbin/lpadmin -p mp6002 -v lpd://mpc6002.iaa.es -P pxlmono-Ricoh.ppd -E
/usr/sbin/lpadmin -p mp6002d -v lpd://mpc6002.iaa.es -P pxlmono-Ricoh.ppd -E

/usr/bin/lpoptions -p mp6002 -o media=A4
/usr/bin/lpoptions -p mp6002d -o media=A4 -o sides=two-sided-long-edge

/usr/sbin/lpadmin -p mp4000 -v lpd://mpc4000.iaa.es -P pxlmono-Ricoh.ppd -E
/usr/sbin/lpadmin -p mp4000d -v lpd://mpc4000.iaa.es -P pxlmono-Ricoh.ppd -E

/usr/bin/lpoptions -p mp4000 -o media=A4
/usr/bin/lpoptions -p mp4000d -o media=A4 -o sides=two-sided-long-edge

/usr/sbin/lpadmin -p mp3500 -v lpd://mpc3500.iaa.es -P pxlmono-Ricoh.ppd -E
/usr/sbin/lpadmin -p mp3500d -v lpd://mpc3500.iaa.es -P pxlmono-Ricoh.ppd -E

/usr/bin/lpoptions -p mp3500 -o media=A4
/usr/bin/lpoptions -p mp3500d -o media=A4 -o sides=two-sided-long-edge

/usr/sbin/lpadmin -p mp3502 -v lpd://mpc3502.iaa.es -P pxlmono-Ricoh.ppd -E
/usr/sbin/lpadmin -p mp3502d -v lpd://mpc3502.iaa.es -P pxlmono-Ricoh.ppd -E

/usr/bin/lpoptions -p mp3502 -o media=A4
/usr/bin/lpoptions -p mp3502d -o media=A4 -o sides=two-sided-long-edge

echo  ""
echo  "#########################################################"
echo  " Por favor introduce la cola por defecto"
echo  " Las colas disponibles en B&N son:"
echo  ""
echo  " mp6002   -> Escalera Edificio A"
echo  " mp6002d  -> Escalera Edificio A (Doble Cara)"
echo  " mp6001   -> 1ª Planta Edificio A"
echo  " mp6001d  -> 1ª Planta Edificio A (Doble Cara)" 
echo  " mp4000   -> Biblioteca Edificio A"
echo  " mp4000d  -> Biblioteca Edificio A (Doble Cara)"
echo  " mp3500   -> Edificio C"
echo  " mp3500d  -> Edificio C (Doble Cara)"
echo  " mp3502   -> 1ª Planta Edificio B"
echo  " mp3502d  -> 1ª Planta Edificio B (Doble Cara)"
echo  ""
read defaultprinter
/usr/bin/lpoptions -d $defaultprinter > trash.txt
rm -rf trash.txt
echo ""
echo  "###########                             #################"
sleep 1
echo  "###########             FIN             #################"


