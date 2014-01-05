# androidx configuration
$(call inherit-product, vendor/androidx/config/common_full_phone.mk)
$(call inherit-product, vendor/androidx/config/gsm.mk)

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_NAME := androidx_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="shamu" BUILD_FINGERPRINT="google/shamu/shamu:5.1.1/LYZ28E/1914015:user/release-keys" PRIVATE_BUILD_DESC="shamu-user 5.1.1 LYZ28E 1914015 release-keys"