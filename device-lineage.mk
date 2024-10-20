#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# ANGLE
PRODUCT_PACKAGES += \
    ANGLE

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

PRODUCT_SYSTEM_PROPERTIES += \
    ro.camerax.extensions.enabled=true

# Carrier
PRODUCT_PRODUCT_PROPERTIES += \
    ro.carriersetup.vzw_consent_page=true

# Charging
PRODUCT_PRODUCT_PROPERTIES += \
    charging_string.apply_v2=true

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.mep.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.mep.xml \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Hotword
PRODUCT_SYSTEM_PROPERTIES += \
    ro.hotword.detection_service_required=true

# WFC
PRODUCT_PRODUCT_PROPERTIES += \
    ro.gwfcactivation.disabled_carriers=1492
