#!/system/bin/sh

# grep the modem partition for baseband version and set it
baseband=`strings /dev/block/mmcblk0p7 | grep "S7582" | head -1`

if [ "$baseband" == "S7582"* ];
then
	setprop ro.build.product kyleprods
	setprop ro.product.model S7582
	setprop ro.product.device kyleprods
	setprop persist.radio.multisim.config dsds
	setprop ro.multisim.simslotcount 2
else
	setprop ro.build.product kylepro
	setprop ro.product.model S7580
	setprop ro.product.device kylepro
	setprop persist.radio.multisim.config none
	setprop ro.multisim.simslotcount 1
fi
