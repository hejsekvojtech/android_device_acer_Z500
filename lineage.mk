#
# Copyright (C) 2017 The LineageOS Project
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

## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := Z500

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/acer/Z500/device.mk)
$(call inherit-product-if-exists, vendor/acer/Z500/Z500-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Z500
PRODUCT_NAME := lineage_Z500
PRODUCT_BRAND := acer
PRODUCT_MODEL := Z500
PRODUCT_MANUFACTURER := Acer

PRODUCT_GMS_CLIENTID_BASE := android-mediatek
