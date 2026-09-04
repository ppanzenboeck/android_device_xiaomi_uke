#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/uke/device.mk)

PRODUCT_NAME := lineage_uke
PRODUCT_DEVICE := uke
PRODUCT_MODEL := Xiaomi Pad 7

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tangorpro-user 16 BP4A.260105.004.E1 14587043 release-keys" \
    BuildFingerprint=google/tangorpro/tangorpro:16/BP4A.260105.004.E1/14587043:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_PRODUCT_PROPERTIES += \
    setupwizard.feature.show_pai_screen_in_main_flow=false \
    ro.setupwizard.suppress_pai=true \
    ro.com.google.clientidbase=android-google \
    ro.com.google.clientidbase.am=android-google \
    ro.com.google.clientidbase.ms=android-google
