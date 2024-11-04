#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from cuscoi device
$(call inherit-product, device/motorola/cuscoi/device.mk)

PRODUCT_DEVICE := cuscoi
PRODUCT_NAME := omni_cuscoi
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 50 fusion
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cuscoi-user 12 U2UUIS34.40-108-3-1 aca44f release-keys"

BUILD_FINGERPRINT := motorola/cuscoi/cuscoi:12/U2UUIS34.40-108-3-1/aca44f:user/release-keys
