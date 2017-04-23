# Copyright (C) 2014 The CyanogenMod Project
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

LOCAL_PATH := device/sprd/sc7731gea

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/sprd/sc7731gea/sc7731gea-vendor.mk)

# Inherit from scx30g2-common device configuration
$(call inherit-product, device/samsung/scx30g2-common/common.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# Media config
PRODUCT_PACKAGES += \
	media_profiles.xml

# Permissions
PERMISSIONS_XML_FILES := \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml

PRODUCT_COPY_FILES += \
	$(foreach f,$(PERMISSIONS_XML_FILES),$(f):system/etc/permissions/$(notdir $(f)))

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_sc7731gea
PRODUCT_DEVICE := sc7731gea
PRODUCT_BRAND := myphone
PRODUCT_MANUFACTURER := MyPhone
PRODUCT_MODEL := My28S
