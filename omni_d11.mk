# Release name
PRODUCT_RELEASE_NAME := d11

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Apple Iphone 7 Plus
PRODUCT_MODEL := apple_d11
PRODUCT_NAME := omni_d11
PRODUCT_BRAND := apple
