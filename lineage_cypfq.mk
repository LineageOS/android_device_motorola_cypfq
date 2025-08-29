#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cypfq device
$(call inherit-product, device/motorola/cypfq/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_cypfq
PRODUCT_DEVICE := cypfq
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g51 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fogo_g-user 15 V1UFNS35H.193-20-17 e46864-fa188 release-keys MV-304" \
    BuildFingerprint=motorola/fogo_g/fogo:15/V1UFNS35H.193-20-17/e46864-fa188:user/release-keys \
    DeviceProduct=fogo_g
