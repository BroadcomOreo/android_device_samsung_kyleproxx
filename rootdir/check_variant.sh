#!/system/bin/sh

# grep the modem partition for baseband version and set it
baseband=`strings /dev/block/mmcblk0p7 | grep "S7582" | head -1`

if [ "$baseband" == "S7582"* ];
then
	mv /system/lib/libbrcm_ril_KYLEPRODS.so /system/lib/libbrcm_ril.so
	mv /system/lib/libril_KYLEPRODS.so /system/lib/libril.so
	rm /system/lib/libbrcm_ril_KYLEPRO.so
	rm /system/lib/libril_KYLEPRO.so
else
	mv /system/lib/libbrcm_ril_KYLEPRO.so /system/lib/libbrcm_ril.so
	mv /system/lib/libril_KYLEPRO.so /system/lib/libril.so
	rm /system/lib/libbrcm_ril_KYLEPRODS.so
	rm /system/lib/libril_KYLEPRODS.so
fi
