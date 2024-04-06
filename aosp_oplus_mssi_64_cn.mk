#
# Copyright (C) 2020 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from selene device
$(call inherit-product, device/realme/oplus_mssi_64_cn/device.mk)

# Inherit some common twrp stuff.
# $(call inherit-product, vendor/aosp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := oplus_mssi_64_cn
PRODUCT_NAME := aosp_oplus_mssi_64_cn
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme Narzo 50a
PRODUCT_MANUFACTURER := Realme
PRODUCT_RELEASE_NAME := Realme Narzo 50a

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
