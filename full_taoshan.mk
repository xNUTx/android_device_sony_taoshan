# Copyright (C) 2014 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit taoshan device
$(call inherit-product, device/sony/taoshan/taoshan.mk)

# Inherit common Sony resources
$(call inherit-product, device/sony/common/resources.mk)

# Device identifier
PRODUCT_DEVICE := taoshan
PRODUCT_NAME := full_taoshan
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia L
PRODUCT_MANUFACTURER := Sony

# Copy prebuilt kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/sony/taoshan/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel
