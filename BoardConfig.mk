USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/vivaltods5m/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hawaii
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := hawaii
BOARD_VENDOR := samsung

# Assert
TARGET_OTA_ASSERT_DEVICE := vivaltods5m,G313HU,SM-G313HU,hawaii

# Prebuilt chromium
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := false

BOARD_KERNEL_BASE := 0x81e00000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := bcm21664_hawaii_ss_vivaltods5m_rev00_cm_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/hawaii
KERNEL_TOOLCHAIN_PREFIX := /media/file1/cm-11.0/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/arm-eabi-
# Prebuilt
# TARGET_PREBUILT_KERNEL := device/samsung/vivaltods5m/kernel
# BOARD_MKBOOTIMG_ARGS:=--second device/samsung/vivaltods5m/second.bin
# Prebuilt end
BOARD_MKBOOTIMG_ARGS:=--second $(OUT)/obj/KERNEL_OBJ/arch/arm/boot/dts/hawaii_ss_vivaltods5m_rev00.dtb

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1161543680
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2424307712
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# FLASH BLOCK SIZE (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/vivaltods5m/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/vivaltods5m/bluetooth/libbt_vndcfg_g313hu.txt

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4343
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI          := true

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Hardware rendering
BOARD_EGL_CFG := device/samsung/vivaltods5m/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DHAWAII_HWC
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

# Opengl
BOARD_USE_BGRA_8888 := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
WITH_DEXPREOPT := false
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    #WITH_DEXPREOPT := true
  endif
endif

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
#BOARD_CHARGER_ENABLE_SUSPEND := true
#BOARD_ALLOW_SUSPEND_IN_CHARGER := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
#BOARD_BATTERY_DEVICE_NAME := "battery"

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-vivaltods5m.hawaii

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/vivaltods5m/ril/
SIM_COUNT := 2

# Recovery
TARGET_RECOVERY_INITRC := device/samsung/vivaltods5m/ramdisk/init.recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/vivaltods5m/ramdisk/fstab.hawaii_ss_vivaltods5m
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS := false
BOARD_RECOVERY_ALWAYS_WIPES := false
BOARD_SUPPRESS_EMMC_WIPE := true

# Philz config
RECOVERY_VARIANT := philz
BOARD_HAS_LOW_RESOLUTION := true

# TWRP Settings
RECOVERY_GRAPHICS_USE_LINELENGTH 		:= true
DEVICE_RESOLUTION	:= 480x800
BOARD_USE_CUSTOM_RECOVERY_FONT	:= \"roboto_10x18.h\"
TW_INTERNAL_STORAGE_PATH 			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT 		:= "data"
TW_EXTERNAL_STORAGE_PATH 			:= "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT 		:= "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE 			:= true
TW_FLASH_FROM_STORAGE 				:= true
TW_NO_REBOOT_BOOTLOADER 			:= true
TW_HAS_DOWNLOAD_MODE				:= true

BOARD_HAVE_FM_RADIO := false
# BOARD_FM_DEVICE := bcm4329

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/vivaltods5m/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/vivaltods5m/include

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/vivaltods5m/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts
