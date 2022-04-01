#
# Copyright (C) 2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from M51 device
$(call inherit-product, device/samsung/m51/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot
TARGET_BOOT_ANIMATION_RES := 1080

# Gms
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_DEVICE := m51
PRODUCT_NAME := aosp_m51
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-M515F
PRODUCT_RELEASE_NAME := m51nsxx

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=m51 \
    PRIVATE_BUILD_DESC="m51nsxx-user 11 RP1A.200720.012 M515FXXS4CUL1 release-keys"

BUILD_FINGERPRINT := samsung/m51nsxx/m51:11/RP1A.200720.012/M515FXXS4CUL1:user/release-keys
