1  #
     2  # Copyright (C) 2023 The LineageOS Project
     3  # Copyright (C) 2026 Project Infinity X
     4  #
     5  # SPDX-License-Identifier: Apache-2.0
     6  #
     7
     8  # Inherit from device tree
     9  $(call inherit-product, device/lge/alphaplus/device.mk)
    10  $(call inherit-product, vendor/lineage/config/common_full_phone.mk)
    17
    18  # Infinity X flags
    19  INFINITY_BUILD_TYPE := UNOFFICIAL
    20  INFINITY_MAINTAINER := protpr0t
    21  TARGET_SUPPORTS_BLUR := true
    22  TARGET_HAS_UDFPS := false
    23  WITH_GAPPS := true
    24  TARGET_BUILD_GOOGLE_TELEPHONY := true
    25  TARGET_SUPPORTS_TOUCHGESTURES := true
    26  USE_MOTO_CALCULATOR := true
    27
    28  # Other device flags
    29  PRODUCT_NO_CAMERA := false
    30  TORCH_STR_SUPPORTED := true
    31  TARGET_FACE_UNLOCK_SUPPORTED := true
    32
    33  # Boot Animation Resolution
    34  TARGET_SCREEN_HEIGHT := 2340
    35  TARGET_SCREEN_WIDTH := 1080
    36
    37  # Device Identifiers (Must come after all product inclusions)
    38  PRODUCT_NAME := lineage_alphaplus
    39  PRODUCT_DEVICE := alphaplus
    40  PRODUCT_MANUFACTURER := LGE
    41  PRODUCT_BRAND := LGE
    42  PRODUCT_MODEL := G8 ThinQ
    43
    44  PRODUCT_GMS_CLIENTID_BASE := android-lge
    45
    46  # Build Property Overrides
    47  PRODUCT_BUILD_PROP_OVERRIDES += \
    48      DeviceProduct=alphaplus_lao_com \
    49      BuildDesc="alphaplus_lao_com-user 12 SKQ1.211103.001 22244172863c5 release-keys" \
    50      BuildFingerprint=lge/alphaplus_lao_com/alphaplus:12/SKQ1.211103.001/22244172863c5:user/release-keys
