#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/google/caimito/aosp_caiman.mk)
$(call inherit-product, device/google/caimito/device-lineage.mk)
$(call inherit-product, vendor/google/caiman/caiman-vendor.mk)

PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9 Pro
PRODUCT_NAME := lineage_caiman

PRODUCT_SYSTEM_BRAND := google
PRODUCT_SYSTEM_MANUFACTURER := Google

PRODUCT_BRAND_FOR_ATTESTATION := google
PRODUCT_DEVICE_FOR_ATTESTATION := caiman
PRODUCT_MANUFACTURER_FOR_ATTESTATION := Google
PRODUCT_MODEL_FOR_ATTESTATION := Pixel 9 Pro
PRODUCT_NAME_FOR_ATTESTATION := caiman

TARGET_SCREEN_HEIGHT := 2856
TARGET_SCREEN_WIDTH := 1280

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="caiman-user 15 AP3A.241005.015 12366759 release-keys" \
    BuildFingerprint=google/caiman/caiman:15/AP3A.241005.015/12366759:user/release-keys \
    DeviceProduct=caiman
