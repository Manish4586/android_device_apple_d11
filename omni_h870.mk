# Release name
PRODUCT_RELEASE_NAME := iphone_7,1

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := iphone_7,1
PRODUCT_MODEL := Apple_iphone
PRODUCT_NAME := omni_iphone_7,1
PRODUCT_BRAND := apple
