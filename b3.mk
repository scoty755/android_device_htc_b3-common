#
# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/htc/b3-common/b3-common-vendor.mk)

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Consumer IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    copybit.msm8994 \
    gralloc.msm8994 \
    hwcomposer.msm8994 \
    memtrack.msm8994 \
    liboverlay

# Dot View Case
PRODUCT_PACKAGES += \
    FlipFlap

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# TWRP specific build flags
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/recovery.fstab

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/max1187x_touchscreen_0.idc:system/usr/idc/max1187x_touchscreen_0.idc \
    $(LOCAL_PATH)/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/idc/synaptics_dsx.idc:system/usr/idc/synaptics_dsx.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/AK8789_HALL_SENSOR.kl:system/usr/keylayout/AK8789_HALL_SENSOR.kl \
    $(LOCAL_PATH)/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl

# IPACM
PRODUCT_PACKAGES += \
    IPACM_cfg.xml \
    ipacm

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service \
    keystore.msm8994

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service \
    power.msm8994

# QMI
PRODUCT_PACKAGES += \
    dsi_config.xml \
    netmgr_config.xml \
    qmi_config.xml

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_b3

# Renderscript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libshim_ril

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/thermal-engine.conf:system/etc/thermal-engine.conf

