#
# Copyright (C) 2018 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_INCLUDE_WIFI_EXT := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from jasmine_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI A2
PRODUCT_NAME := aosp_jasmine_sprout

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := jasmine

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jasmine-user 10 QKQ1.190910.002 V11.0.4.0.QDIMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/jasmine/jasmine_sprout:10/QKQ1.190910.002/V11.0.4.0.QDIMIXM:user/release-keys
