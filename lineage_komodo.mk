#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/google/caimito/aosp_komodo.mk)

PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9 Pro XL
PRODUCT_NAME := lineage_komodo

TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="komodo-user 15 AP3A.241005.015 12366759 release-keys" \
    BuildFingerprint=google/komodo/komodo:15/AP3A.241005.015/12366759:user/release-keys \
    DeviceProduct=komodo
