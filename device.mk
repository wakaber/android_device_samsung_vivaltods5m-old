$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/vivaltods5m/vivaltods5m-vendor.mk)

# Use high-density artwork where available
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

DEVICE_PACKAGE_OVERLAYS += device/samsung/vivaltods5m/overlay

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/ramdisk/fstab.hawaii_ss_vivaltods5m:root/fstab.hawaii_ss_vivaltods5m \
	device/samsung/vivaltods5m/ramdisk/twrp.fstab:root/etc/twrp.fstab \
	#device/samsung/vivaltods5m/ramdisk/deprecated/init:root/init \
	device/samsung/vivaltods5m/ramdisk/init.hawaii_ss_vivaltods5m.rc:root/init.hawaii_ss_vivaltods5m.rc \
	device/samsung/vivaltods5m/ramdisk/init.hawaii_ss_vivaltods5m_base.rc:root/init.hawaii_ss_vivaltods5m_base.rc \
	device/samsung/vivaltods5m/ramdisk/init.log.rc:root/init.log.rc \
	device/samsung/vivaltods5m/ramdisk/init.rc:root/init.rc \
	device/samsung/vivaltods5m/ramdisk/init.usb_hawaii_ss.rc:root/init.usb_hawaii_ss.rc \
	device/samsung/vivaltods5m/ramdisk/init.wifi.rc:root/init.wifi.rc \
	device/samsung/vivaltods5m/ramdisk/lpm.rc:root/lpm.rc \
	device/samsung/vivaltods5m/ramdisk/ueventd.hawaii_ss_vivaltods5m.rc:root/ueventd.hawaii_ss_vivaltods5m.rc

# Audio config
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/samsung/vivaltods5m/configs/audio_policy.conf:system/etc/audio_policy.conf \
	device/samsung/vivaltods5m/configs/media_codecs.xml:system/etc/media_codecs.xml

# wifi config
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	device/samsung/vivaltods5m/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/samsung/vivaltods5m/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Bluetooth config
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
	device/samsung/vivaltods5m/configs/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/keylayouts/bcmpmu_on.kl:system/usr/keylayout/bcmpmu_on.kl \
	device/samsung/vivaltods5m/keylayouts/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
	device/samsung/vivaltods5m/keylayouts/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
	device/samsung/vivaltods5m/keylayouts/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/samsung/vivaltods5m/keylayouts/ist30xx_ts_input.kl:system/usr/keylayout/ist30xx_ts_input.kl

# Insecure ADBD
# (ro.adb.secure=3)
ADDITIONAL_DEFAULT_PROPERTIES += \
	# ro.adb.secure=0 \
	# persist.service.adb.enable=1

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ksm.default=1

# Filesystem management tools
PRODUCT_PACKAGES += \
	libbluetooth_jni \
	setup_fs \
	e2fsck \
	f2fstat \
	fsck.f2fs \
	fibmap.f2fs \
	mkfs.f2fs
		
# Usb accessory
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Misc other modules
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.r_submix.default \
	audio.usb.default \
	audio_policy.hawaii \
	libaudio-resampler \
	lights.hawaii \
	libnetcmdiface \
	audio.primary.default \
	libstagefrighthw

# Device-specific packages
PRODUCT_PACKAGES += \
	SamsungServiceMode \
	Torch

# Charger
#PRODUCT_PACKAGES += \
#	charger \
#	charger_res_images

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
	
# Support for Browser's saved page feature. This allows
# for pages saved on previous versions of the OS to be
# viewed on the current OS.
PRODUCT_PACKAGES += \
    libskia_legacy

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    mobiledata.interfaces=rmnet0 \
    ro.zygote.disable_gl_preload=true \
    ro.cm.hardware.cabc=/sys/class/mdnie/mdnie/cabc
    
# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# MTP
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
	
# Override phone-hdpi-512-dalvik-heap to match value on stock
# - helps pass CTS com.squareup.okhttp.internal.spdy.Spdy3Test#tooLargeDataFrame)
# (property override must come before included property)
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapgrowthlimit=56m	

# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

ifeq ($(TARGET_BUILD_VARIANT),user)      
else      
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_vivaltods5m
PRODUCT_DEVICE := vivaltods5m
PRODUCT_MODEL := SM-G313HU
