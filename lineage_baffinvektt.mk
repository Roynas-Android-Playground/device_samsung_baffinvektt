#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/go_defaults.mk)
# Inherit from baffinvektt device
$(call inherit-product, device/samsung/baffinvektt/device.mk)
# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 9

PRODUCT_DEVICE := baffinvektt
PRODUCT_NAME := lineage_baffinvektt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SHV-E275K
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="baffinvektt-user 4.1.2 JZO54K E275KKKUAOH1 release-keys"

BUILD_FINGERPRINT := samsung/baffinvektt/baffinvektt:4.1.2/JZO54K/E275KKKUAOH1:user/release-keys
