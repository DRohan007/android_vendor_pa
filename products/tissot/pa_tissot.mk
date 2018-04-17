ifeq (pa_tissot,$(TARGET_PRODUCT))

# Inherit all device-specific stuff
$(call inherit-product, device/xiaomi/tissot/full_tissot.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Include common AOSPA stuff
include vendor/pa/main.mk

# Include correct bootanimation size
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := pa_tissot
BOARD_VENDOR := Xiaomi
PRODUCT_DEVICE := tissot

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tissot-user 8.0.0 OPR1.170623.026 8.1.10 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/tissot/tissot_sprout:8.0.0/OPR1.170623.026/8.1.10:user/release-keys"

endif
