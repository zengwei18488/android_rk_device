#
# Copyright 2014 The Android Open-Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
include device/rockchip/rsb4680/BoardConfig.mk
$(call inherit-product, device/rockchip/rsb4680/device.mk)
$(call inherit-product, device/rockchip/common/device.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_NAME := rsb4680
PRODUCT_DEVICE := rsb4680
PRODUCT_BRAND := Android
PRODUCT_MODEL := rsb4680
PRODUCT_MANUFACTURER := rockchip

# Get the long list of APNs
PRODUCT_COPY_FILES += vendor/rockchip/common/phone/etc/apns-full-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES += vendor/rockchip/common/phone/etc/spn-conf.xml:system/etc/spn-conf.xml

PRODUCT_COPY_FILES += \
    vendor/advantech/tools/fw_printenv:/system/bin/fw_defenv \
    vendor/advantech/tools/fw_printenv:/system/bin/fw_printenv \
    vendor/advantech/tools/fw_printenv:/system/bin/fw_setenv \
    vendor/advantech/tools/fw_env.config:/system/etc/fw_env.config

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.version = 1.0.0 \
    ro.product.ota.host = www.rockchip.com:2300

