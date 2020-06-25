# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) 

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m1891
PRODUCT_NAME := omni_m1891
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := Meizu 15 Plus
PRODUCT_MANUFACTURER := Meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="15 Plus" \
    BUILD_PRODUCT="m1891" \
    PRIVATE_BUILD_DESC="Meizu_15Plus-user 7.0 NRD90M 1530692351 release-keys"
	
BUILD_FINGERPRINT := "Meizu/Meizu_15Plus/15Plus:7.0/NRD90M/1530692351:user/release-keys"

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
