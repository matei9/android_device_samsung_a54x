#
# Copyright (C) 2021-2023 The LineageOS Project
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

# Inherit from the common tree
#$(call inherit-product, device/samsung/exynos9820-common/exynos9825-r.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/a54x/a54x-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Fingerprint Gestures - NOT SUPPORTED BY A54X
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/configs/keylayout/uinput-sec-fp.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-sec-fp.kl

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/init.m62.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.m62.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#PRODUCT_PACKAGES += \ - NOT SUPPORTED BY A54X
#    SettingsProviderOverlayM62
