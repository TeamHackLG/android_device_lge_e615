include device/lge/msm7x27a-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/lge/e615/BoardConfigVendor.mk
TARGET_BOOTLOADER_BOARD_NAME := e615

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.hardware=m4ds lge.signed_image=false

TARGET_KERNEL_CONFIG := cyanogenmod_m4ds_defconfig
TARGET_PREBUILT_KERNEL := device/lge/e615/kernel

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := e615

BOARD_CUSTOM_GRAPHICS := ../../../device/lge/e615/recovery/graphics.c
