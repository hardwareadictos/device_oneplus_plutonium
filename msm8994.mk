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
DEVICE_PACKAGE_OVERLAYS := device/qcom/msm8994/overlay

TARGET_USES_NQ_NFC := false

# Enable features in video HAL that can compile only on this platform
TARGET_USES_MEDIA_EXTENSIONS := true

PRODUCT_COPY_FILES += device/qcom/msm8994/media/media_profiles.xml:system/etc/media_profiles.xml \
                      device/qcom/msm8994/media/media_codecs.xml:system/etc/media_codecs.xml \
                      device/qcom/msm8994/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

# Override heap growth limit due to high display density on device
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, device/qcom/common/common64.mk)
#msm8996 platform WLAN Chipset
WLAN_CHIPSET := qca_cld

PRODUCT_NAME := msm8994
PRODUCT_DEVICE := msm8994
PRODUCT_BRAND := Android
PRODUCT_MODEL := MSM8994 for arm64

#Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

# Audio configuration file
-include $(TOPDIR)hardware/qcom/audio/configs/msm8994/msm8994.mk

# WLAN driver configuration files
PRODUCT_COPY_FILES += \
    device/qcom/msm8994/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/qca_cld/WCNSS_cfg.dat \
    device/qcom/msm8994/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/qcom/msm8994/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/qcom/msm8994/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/qcom/msm8994/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/qcom/msm8994/wifi/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    device/qcom/msm8994/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/qcom/msm8994/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny

# IPA
PRODUCT_PACKAGES += \
    ipacm \
    ipacm-diag \
    IPACM_cfg.xml

#FEATURE_OPENGLES_EXTENSION_PACK support string config file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

PRODUCT_PACKAGES += \
    wpa_supplicant \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    device/qcom/msm8994/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:system/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.sensor.relative_humidity.xml:system/etc/permissions/android.hardware.sensor.relative_humidity.xml

PRODUCT_COPY_FILES += \
    device/qcom/msm8994/sensors/hals.conf:system/etc/sensors/hals.conf

# MIDI feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

#ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app

PRODUCT_AAPT_CONFIG += xlarge large

#for android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files
