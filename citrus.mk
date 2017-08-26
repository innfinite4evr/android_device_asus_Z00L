# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common shits!
$(call inherit-product, vendor/citrus/common.mk)

# Inherit from Z00L device
$(call inherit-product, device/asus/Z00L/full_Z00L.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
BOARD_VENDOR := asus
PRODUCT_BRAND := Asus
PRODUCT_DEVICE := Z00L
PRODUCT_NAME := citrus_Z00L
PRODUCT_MANUFACTURER := Asus
PRODUCT_MODEL := ZenFone2Laser

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := Z00L
TARGET_VENDOR_DEVICE_NAME := ZenFone2Laser
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=ZenFone2Laser PRODUCT_NAME=Z00L

# CAF REVISION
PRODUCT_PROPERTY_OVERRIDES += \
    ro.caf.branch=LA.BR.1.2.9_rb1.23

# Citrus-CAF Z00L Maintainer
PRODUCT_BUILD_PROP_OVERRIDES += \
         DEVICE_MAINTAINERS="prakharluv"

