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

# Inherit device configuration
$(call inherit-product, device/samsung/j6primelte/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/cos/config/common_full_phone.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

TARGET_VENDOR_PRODUCT_NAME := j6primelte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="j6primelteub-user 9 PPR1.180610.011 J610GUBS4BSK2 release-keys"

BUILD_FINGERPRINT := "samsung/j6primelteub/j6primelte:9/PPR1.180610.011/J610GUBS4BSK2:user/release-keys"

# Device identifier
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := j6primelte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := cos_j6primelte
PRODUCT_MODEL := Galaxy J6+
PRODUCT_PLATFORM := msm8917
