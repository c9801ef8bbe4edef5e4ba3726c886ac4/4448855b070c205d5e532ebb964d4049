#!/usr/bin/bash

stockurl="https://mirrors.lolinet.com/firmware/motorola/liber/official/RETUS/XT2067-2_LIBER_RETUS_10_QPIS30.73-33-11_subsidy-DEFAULT_regulatory-DEFAULT_CFC.xml.zip"

clear
printf "downloading stock.zip\n\n"
sleep 1
cd moto_liber/downloaded
sleep 1
curl -O $stockurl
