# Inherit from common
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Device identifier
PRODUCT_DEVICE := G6HS
PRODUCT_NAME := omni_G6HS
PRODUCT_BRAND := SGTC
PRODUCT_MODEL := G6HS
PRODUCT_MANUFACTURER := sgtc

# TWRP
PRODUCT_COPY_FILES += \
    device/sgtc/G6HS/twrp.fstab:recovery/root/etc/twrp.fstab

# Additional props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware=sl8541e \
    ro.product.device=G6HS
