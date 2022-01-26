#!/usr/bin/bash

stockurl="https://mirrors.lolinet.com/firmware/motorola/liber/official/RETUS/XT2067-2_LIBER_RETUS_10_QPIS30.73-33-11_subsidy-DEFAULT_regulatory-DEFAULT_CFC.xml.zip"

clear
printf "setup script\n\n"
sleep 1

clear
printf "creating the necessary directories\n\n"
sleep 1
rm -rfv moto_liber/unpacked
mkdir -pv moto_liber moto_liber/unpacked moto_liber/downloaded
sleep 1
