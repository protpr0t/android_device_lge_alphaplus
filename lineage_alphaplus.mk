#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DERPFEST_BUILD_TYPE := UNOFFICIAL
DERPFEST_MAINTAINER := protpr0t
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := false
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true
TARGET_SUPPORTS_TOUCHGESTURES := true
USE_MOTO_CALCULATOR := true
TARGET_ENABLE_BLUR := true

# Bypass Charging / Power Node Configuration
TARGET_POWER_BYPASS_NODE := "/sys/class/power_supply/battery/charging_enabled 0 1"
WITH_SU := true
BYPASS_CHARGE_SUPPORTED := true

# Other device flags
PRODUCT_NO_CAMERA := false
TORCH_STR_SUPPORTED := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot Animation Resolution
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_alphaplus
PRODUCT_DEVICE := alphaplus
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LGE
PRODUCT_MODEL := G8 ThinQ

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=alphaplus_lao_com \
    BuildDesc="alphaplus_lao_com-user 12 SKQ1.211103.001 22244172863c5 release-keys" \
    BuildFingerprint=lge/alphaplus_lao_com/alphaplus:12/SKQ1.211103.001/22244172863c5:user/release-keys
