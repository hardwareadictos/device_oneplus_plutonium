# Copyright (C) 2016-2017 Paranoid Android
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Set the firmware path in the environment
target_firmware_path := $(ANDROID_BUILD_TOP)/vendor/oneplus/plutonium/firmware_images/

# Setup shipping the bootloader
TARGET_BOOTLOADER_EMMC_INTERNAL := $(target_firmware_path)/emmc_appsboot.mbn
$(TARGET_BOOTLOADER_EMMC_INTERNAL): $(TARGET_BOOTLOADER)
INSTALLED_FIRMWAREIMAGE_TARGET += $(TARGET_BOOTLOADER_EMMC_INTERNAL)

# static_nvbk file
$(call add-firmware-file,$(target_firmware_path)/static_nvbk.bin)
# Radio fusion file
$(call add-firmware-file,$(target_firmware_path)/NON-HLOS.bin)
# Bluetooth file
$(call add-firmware-file,$(target_firmware_path)/BTFM.bin)
# rpm image
$(call add-firmware-file,$(target_firmware_path)/rpm.mbn)
# pmic image
$(call add-firmware-file,$(target_firmware_path)/pmic.mbn)
# tz image
$(call add-firmware-file,$(target_firmware_path)/tz.mbn)
# hyp image
$(call add-firmware-file,$(target_firmware_path)/hyp.mbn)
# sbl1 image
$(call add-firmware-file,$(target_firmware_path)/sbl1.mbn)

# Unset local variable
target_firmware_path :=
