#
# Copyright (C) 2021-2024 The LineageOS Project
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

## Inherit from the common tree
include device/samsung/exynos9820-common/BoardConfig9825-r.mk

## Inherit from the proprietary configuration
include vendor/samsung/a54x/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/a54x

## Display
TARGET_SCREEN_DENSITY := 450

## Kernel
TARGET_KERNEL_CONFIG := exynos9820-a54x_defconfig

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Vibrator
$(call soong_config_set,samsungVibratorVars,duration_amplitude,true)
