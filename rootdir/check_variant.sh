#!/system/bin/sh

# grep the modem partition for baseband version and set it
baseband=`strings /dev/block/mmcblk0p7 | grep "S7582" | head -1`

if [ "$baseband" == "S7582"* ];
then
	cp /system/lib/libbrcm_ril_KYLEPRODS.so /system/lib/libbrcm_ril.so
	cp /system/lib/libril_KYLEPRODS.so /system/lib/libril.so
else
	cp /system/lib/libbrcm_ril_KYLEPRO.so /system/lib/libbrcm_ril.so
        cp /system/lib/libril_KYLEPRO.so /system/lib/libril.so
fi
