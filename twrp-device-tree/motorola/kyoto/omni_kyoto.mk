#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from kyoto device
$(call inherit-product, device/motorola/kyoto/device.mk)

PRODUCT_DEVICE := kyoto
PRODUCT_NAME := omni_kyoto
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 20 lite
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kyoto_retail-user 12 S2RKS32.92-11-21-1 99ec1a release-keys"

BUILD_FINGERPRINT := motorola/kyoto_retail/kyoto:12/S2RKS32.92-11-21-1/99ec1a:user/release-keys
