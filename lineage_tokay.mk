#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/google/caimito/aosp_tokay.mk)

include device/google/caimito/device-lineage.mk

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

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=tokay \
    PRIVATE_BUILD_DESC="tokay-user 14 AD1A.240530.047 12143574 release-keys"

BUILD_FINGERPRINT := google/tokay/tokay:14/AD1A.240530.047/12143574:user/release-keys

$(call inherit-product, vendor/google/tokay/tokay-vendor.mk)
