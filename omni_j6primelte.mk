# Release name
PRODUCT_RELEASE_NAME := j6primelte

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit OF stuff
$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j6primelte
PRODUCT_NAME := omni_j6primelte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy J6+
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
PRODUCT_RELEASE_NAME := Samsung Galaxy J6+
