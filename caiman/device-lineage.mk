#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/caimito/device-lineage.mk)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += device/google/caimito/caiman/overlay-lineage/product
PRODUCT_PACKAGES += \
    PixelDisplayServiceOverlayCaiman

# Quick Start
PRODUCT_PRODUCT_PROPERTIES += \
    ro.quick_start.device_id=caiman
