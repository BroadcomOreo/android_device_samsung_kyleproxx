# Inherit some common CM stuff.
$(call inherit-product, vendor/lineage/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kyleproxx/device_kyleproxx.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kyleprods
PRODUCT_NAME := lineage_kyleproxx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S758x
PRODUCT_CHARACTERISTICS := phone
