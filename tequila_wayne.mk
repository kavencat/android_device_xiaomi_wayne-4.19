#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Maintaier
TEQUILA_MAINTAINER := kavencat

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from wayne device
$(call inherit-product, device/xiaomi/wayne/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/tequila/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := tequila_wayne
PRODUCT_DEVICE := wayne
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6X
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_BOOT_ANIMATION_RES := 1080

# GApps
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_STOCK_ARCORE := true
TARGET_BUILD_GAPPS := true

# tequila
TEQUILA_BUILDTYPE := UNOFFICIAL
TARGET_ENFORCES_QSSI := 1

