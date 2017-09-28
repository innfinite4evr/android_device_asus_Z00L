#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8916-common
-include device/asus/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/Z00L

# Assert
TARGET_OTA_ASSERT_DEVICE := Z00L

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
#TARGET_KERNEL_CONFIG := Z00L_defconfig

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

ifeq ($(TARGET_PREBUILT_KERNEL),)
 LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
 LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# laxy hek ti build withiut kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

# Dexpreopt
ifeq ($(HOST_OS),linux)
ifneq ($(TARGET_BUILD_VARIANT),eng)
WITH_DEXPREOPT := true
WITH_DEXPREOPT_DEBUG_INFO := false
USE_DEX2OAT_DEBUG := false
DONT_DEXPREOPT_PREBUILTS := true
WITH_DEXPREOPT_PIC := true
endif
endif

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Properties
TARGET_SYSTEM_PROP += device/asus/Z00L/system.prop

#RAMDISK
TARGET_USE_CM_RAMDISK := true

# inherit from the proprietary version
-include vendor/asus/Z00L/BoardConfigVendor.mk
