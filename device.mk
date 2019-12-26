#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit the fusion-common definitions
$(call inherit-product, device/samsung/msm8917-common/msm8917.mk)

# Device Path
DEVICE_PATH := device/samsung/j6primelte

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

# Camera configs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/camera/A13QL_s5k3l6xx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/A13QL_s5k3l6xx_module_info.xml \
    $(DEVICE_PATH)/camera/P08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/P08QL_s5k4h5yc_module_info.xml \
    $(DEVICE_PATH)/camera/Q08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Q08QL_s5k4h5yc_module_info.xml \
    $(DEVICE_PATH)/camera/R05QL_s5k5e9yx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/R05QL_s5k5e9yx_module_info.xml \
    $(DEVICE_PATH)/camera/s5k2p6sx_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k2p6sx_chromatix.xml \
    $(DEVICE_PATH)/camera/s5k2x7sp_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k2x7sp_chromatix.xml \
    $(DEVICE_PATH)/camera/s5k3l6xx_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k3l6xx_chromatix.xml \
    $(DEVICE_PATH)/camera/s5k3l6xx_chromatix_j4primelte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k3l6xx_chromatix_j4primelte.xml \
    $(DEVICE_PATH)/camera/s5k3p8sp_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k3p8sp_chromatix.xml \
    $(DEVICE_PATH)/camera/s5k4h5yc_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4h5yc_chromatix.xml \
    $(DEVICE_PATH)/camera/s5k4hayx_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4hayx_chromatix.xml \
    $(DEVICE_PATH)/camera/s5k5e3yx_f2_2_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e3yx_f2_2_chromatix.xml \
    $(DEVICE_PATH)/camera/s5k5e9yx_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e9yx_chromatix.xml \
    $(DEVICE_PATH)/camera/s5k5e9yx_q05ql_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e9yx_q05ql_chromatix.xml \
    $(DEVICE_PATH)/camera/sdm450_camera_j6primelte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sdm450_camera_j6primelte.xml \
    $(DEVICE_PATH)/camera/sr259_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sr259_chromatix.xml \
    $(DEVICE_PATH)/camera/sr544_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sr544_chromatix.xml \
    $(DEVICE_PATH)/camera/sr556_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sr556_chromatix.xml \
    $(DEVICE_PATH)/camera/Z08QL_s5k4hayx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Z08QL_s5k4hayx_module_info.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Vendor files
$(call inherit-product, vendor/samsung/j4primelte/j6primelte-vendor.mk)

# AOSP DEVICE
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := j6primelte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_j6primelte
PRODUCT_MODEL := Galaxy J6+
