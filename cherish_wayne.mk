#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Kaleidoscope stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from wayne device
$(call inherit-product, device/xiaomi/wayne/device.mk)

# Build Description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="wayne-user 9 PKQ1.180904.001 V10.3.4.0.PDCCNXM release-keys"

# Build Fingerprint
BUILD_FINGERPRINT := "xiaomi/wayne/wayne:8.1.0/OPM1.171019.011/V9.5.11.0.ODCCNFA:user/release-keys"

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := cherish_wayne
PRODUCT_DEVICE := wayne
PRODUCT_MODEL := MI 6X
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_BOOT_ANIMATION_RES := 1080
