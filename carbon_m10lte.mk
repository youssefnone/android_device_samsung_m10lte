#
# Copyright (C) 2021 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from m10lte device
$(call inherit-product, device/samsung/m10lte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/carbon/config/common.mk)
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_m10lte
PRODUCT_DEVICE := m10lte
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Samsung Galaxy M10

TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := "samsung/m10ltexx/m10lte:10/QP1A.190711.020/m1000FNXXU7CTC8:user/release-keys"

TARGET_VENDOR := samsung
