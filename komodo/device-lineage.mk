#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/caimito/device-lineage.mk)

# Overlays
PRODUCT_PACKAGES += \
    PixelDisplayServiceOverlayKomodo
