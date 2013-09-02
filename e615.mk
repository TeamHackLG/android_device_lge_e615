PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)

$(call inherit-product-if-exists, vendor/lge/e615/e615-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/e615/overlay

$(call inherit-product, $(LOCAL_PATH)/mdpi-dalvik.mk)

PRODUCT_AAPT_CONFIG := normal mdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.m4ds.rc:root/init.m4ds.rc \
    $(LOCAL_PATH)/ueventd.m4ds.rc:root/ueventd.m4ds.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/m4ds_keypad.kl:system/usr/keylayout/m4ds_keypad.kl \
    $(LOCAL_PATH)/configs/touch_mcs8000.idc:system/usr/idc/touch_mcs8000.idc \
    $(LOCAL_PATH)/configs/touch_mcs8000.kl:system/usr/keylayout/touch_mcs8000.kl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# HW HALS
PRODUCT_PACKAGES += \
    gps.e615

PRODUCT_PROPERTY_OVERRIDES += \
    persist.multisim.config=dsds \
    ro.multi.rild=true \
    persist.dsds.enabled=true

PRODUCT_NAME := full_e615
PRODUCT_DEVICE := e615
PRODUCT_MODEL := LG-E615
