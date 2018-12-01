#
# Copyright (C) 2017-2018 The MoKee Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from maple device
$(call inherit-product, device/sony/maple/device.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_NAME := mk_maple
PRODUCT_DEVICE := maple
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8142

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=G8142 \
        PRIVATE_BUILD_DESC="G8142-user 9 47.2.A.2.33 1053320528 release-keys"

BUILD_FINGERPRINT := Sony/G8142/G8142:9/47.2.A.2.33/1053320528:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.mk.maintainer=updateing

TARGET_VENDOR := sony
