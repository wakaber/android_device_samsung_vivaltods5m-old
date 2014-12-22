# Release name
PRODUCT_RELEASE_NAME := GT-S7270

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/logan/device_logan.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := logan
PRODUCT_NAME := cm_logan
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S7270
PRODUCT_CHARACTERISTICS := phone

#Set build fingerprint / ID / Prduct Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=baffinvj TARGET_DEVICE=baffin BUILD_FINGERPRINT=samsung/baffinvj/baffin:4.1.2/JZO54K/I9082LDCAMC2:user/release-keys PRIVATE_BUILD_DESC="baffinvj-user 4.1.2 JZO54K I9082LDCAMC2 release-keys"

