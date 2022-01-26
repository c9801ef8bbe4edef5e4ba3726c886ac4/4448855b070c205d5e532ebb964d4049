#!/usr/bin/bash

unverify="--disable-verity --disable-verification"
hpath="./moto_liber/unpacked"

clear && adb reboot bootloader
clear && fastboot reboot bootloader
clear && fastboot reboot fastboot
clear && fastboot flash gpt $hpath/gpt.bin
clear && fastboot flash bootloader $hpath/bootloader.img
clear && fastboot flash $unverify vbmeta $hpath/vbmeta.img
clear && fastboot flash radio $hpath/radio.img
clear && fastboot flash bluetooth $hpath/BTFM.bin
clear && fastboot flash dsp $hpath/dspso.bin
clear && fastboot flash logo $hpath/logo.bin
clear && fastboot flash $unverify boot $hpath/boot.img
clear && fastboot flash dtbo $hpath/dtbo.img
clear && fastboot flash recovery $hpath/recovery.img
clear && fastboot flash super $hpath/super.img_sparsechunk.0
clear && fastboot flash super $hpath/super.img_sparsechunk.1
clear && fastboot flash super $hpath/super.img_sparsechunk.2
clear && fastboot flash super $hpath/super.img_sparsechunk.3
clear && fastboot flash super $hpath/super.img_sparsechunk.4
clear && fastboot flash super $hpath/super.img_sparsechunk.5
clear && fastboot flash super $hpath/super.img_sparsechunk.6
clear && fastboot flash super $hpath/super.img_sparsechunk.7
clear && fastboot erase carrier
clear && fastboot erase userdata
clear && fastboot erase metadata
clear && fastboot erase ddr

clear && fastboot reboot bootloader
