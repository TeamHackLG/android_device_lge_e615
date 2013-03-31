## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e615/e615.mk)

PRODUCT_NAME := cm_e615

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusL5
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e615

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m4ds_open_in BUILD_FINGERPRINT=lge/m4ds_open_in/m4ds:4.0.4/IMM76D/lge615-V10d.20121001.160457:user/release-keys PRIVATE_BUILD_DESC="m4ds_open_in-user 4.0.4 IMM76D lge615-V10d.20121001.160457 release-keys"

# Enable Torch
#PRODUCT_PACKAGES += Torch
