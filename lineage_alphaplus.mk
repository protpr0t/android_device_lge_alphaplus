#
# Copyright (C) 2023 The LineageOS Project
# Copyright (C) 2026 Project Infinity X
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from device tree
$(call inherit-product, device/lge/alphaplus/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Include private signing keys (Gunakan -include agar tidak crash jika repo keys absen)
-include vendor/infinity-priv/keys/keys.mk
ifneq ($(wildcard vendor/infinity-priv/keys/releasekey.pk8),)
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/infinity-priv/keys/releasekey
endif

# Infinity X flags
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := protpr0t
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := false
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true
TARGET_SUPPORTS_TOUCHGESTURES := true
USE_MOTO_CALCULATOR := true

# Other device flags
PRODUCT_NO_CAMERA := false
TORCH_STR_SUPPORTED := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot Animation Resolution
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Device Identifiers (Must come after all product inclusions)
PRODUCT_NAME := lineage_alphaplus
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
