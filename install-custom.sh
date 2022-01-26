#!/usr/bin/bash

unverify="--disable-verity --disable-verification"
hpath="./moto_liber/unpacked"

clear && adb reboot bootloader
clear && fastboot reboot bootloader
clear && fastboot reboot fastboot
clear && fastboot flash $unverify boot $hpath/boot.img
clear && fastboot flash dtbo $hpath/dtbo.img
clear && fastboot flash $unverify vbmeta $hpath/vbmeta.img
clear && fastboot flash vendor $hpath/vendor.img
clear && fastboot erase system
clear && fastboot delete-logical-partition product_a
clear && fastboot erase system
clear && fastboot flash system $hpath/system.img
clear && fastboot -w
clear && fastboot reboot bootloader
clear && fastboot reboot
