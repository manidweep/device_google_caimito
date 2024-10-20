#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/google/caimito/aosp_tokay.mk)
$(call inherit-product, device/google/caimito/device-lineage.mk)
$(call inherit-product, vendor/google/tokay/tokay-vendor.mk)

PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9
PRODUCT_NAME := lineage_tokay

PRODUCT_SYSTEM_BRAND := google
PRODUCT_SYSTEM_MANUFACTURER := Google

PRODUCT_BRAND_FOR_ATTESTATION := google
PRODUCT_DEVICE_FOR_ATTESTATION := tokay
PRODUCT_MANUFACTURER_FOR_ATTESTATION := Google
PRODUCT_MODEL_FOR_ATTESTATION := Pixel 9
PRODUCT_NAME_FOR_ATTESTATION := tokay

TARGET_SCREEN_HEIGHT := 2424
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tokay-user 15 AP3A.241005.015 12366759 release-keys" \
    BuildFingerprint=google/tokay/tokay:15/AP3A.241005.015/12366759:user/release-keys \
    DeviceProduct=tokay
