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

include device/samsung/msm8917-common/BoardConfigCommon.mk

# Device Path
DEVICE_PATH := device/samsung/j6primelte

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/msm8917
TARGET_KERNEL_CONFIG := j6primelte_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Fingerprint
TARGET_SEC_FP_HAL_VARIANT := bauth

# Platform
BOARD_VENDOR_PLATFORM := samsung-msm8917

# Vendor Security patch level
VENDOR_SECURITY_PATCH := 2019-06-05
