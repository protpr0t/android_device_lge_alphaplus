#
# Copyright (C) 2023 The LineageOS Project
# Copyright (C) 2026 AxionAOSP
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from device tree
$(call inherit-product, device/lge/alphaplus/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_DISABLE_EPPE := true

# Include private signing keys (Gunakan -include agar tidak crash jika repo keys absen)
-include vendor/lineage-priv/keys/keys.mk

# AxionOS UI & Display Flags
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TORCH_STR_SUPPORTED := true

# Boot Animation Resolution
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# AxionOS Device Info Specs (Settings > About Phone)
AXION_CAMERA_REAR_INFO := 12 MP + 16 MP + 12 MP
AXION_CAMERA_FRONT_INFO := 8 MP
AXION_MAINTAINER := protpr0t
AXION_PROCESSOR := Snapdragon_855
TARGET_FACE_UNLOCK_SUPPORTED := true

# Bypass Charging / Power Node Configuration
TARGET_POWER_BYPASS_NODE := "/sys/class/power_supply/battery/charging_enabled 0 1"

# Device Identifiers (Must come after all product inclusions)
PRODUCT_NAME := axion_alphaplus
PRODUCT_DEVICE := alphaplus
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LGE
PRODUCT_MODEL := G8 ThinQ

PRODUCT_GMS_CLIENTID_BASE := android-lge

# Build Property Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=alphaplus_lao_com \
    BuildDesc="alphaplus_lao_com-user 12 SKQ1.211103.001 22244172863c5 release-keys" \
    BuildFingerprint=lge/alphaplus_lao_com/alphaplus:12/SKQ1.211103.001/22244172863c5:user/release-keys
