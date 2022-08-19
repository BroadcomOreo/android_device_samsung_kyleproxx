#!/system/bin/sh

# grep the modem partition for baseband version and set it
model=`getprop ro.product.device`

if [[ $model == "kyleprods" ]];
then
	sed -i -e 's/ro.build.product=kyleproxx/ro.build.product=kyleprods/g' /system/build.prop
	sed -i -e 's/ro.product.model=GT-S758x/ro.product.model=GT-S7582/g' /system/build.prop
	sed -i -e 's/ro.product.device=kyleproxx/ro.product.device=kyleprods/g' /system/build.prop
	sed -i -e 's/persist.radio.multisim.config=none/persist.radio.multisim.config=dsds/g' /system/build.prop
	sed -i -e 's/ro.multisim.simslotcount=1/ro.multisim.simslotcount=2/g' /system/build.prop
	mv /system/vendor/lib/libbrcm_ril_KYLEPRODS.so /system/lib/libbrcm_ril.so
	mv /system/vendor/lib/libril_KYLEPRODS.so /system/lib/libril.so
	rm /system/vendor/lib/libbrcm_ril_KYLEPRO.so
	rm /system/vendor/lib/libril_KYLEPRO.so
else
	sed -i -e 's/ro.build.product=kyleproxx/ro.build.product=kylepro/g' /system/build.prop
	sed -i -e 's/ro.product.model=GT-S758x/ro.product.model=GT-S7580/g' /system/build.prop
	sed -i -e 's/ro.product.device=kyleproxx/ro.product.device=kylepro/g' /system/build.prop
	mv /system/vendor/lib/libbrcm_ril_KYLEPRO.so /system/vendor/lib/libbrcm_ril.so
	mv /system/vendor/lib/libril_KYLEPRO.so /system/vendor/lib/libril.so
	rm /system/vendor/lib/libbrcm_ril_KYLEPRODS.so
	rm /system/vendor/lib/libril_KYLEPRODS.so
fi
