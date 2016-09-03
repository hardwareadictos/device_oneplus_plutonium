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
DEVICE_PACKAGE_OVERLAYS := device/oneplus/oneplus2/overlay

TARGET_USES_NQ_NFC := false

# Enable features in video HAL that can compile only on this platform
TARGET_USES_MEDIA_EXTENSIONS := true

PRODUCT_COPY_FILES += device/oneplus/oneplus2/media/media_profiles.xml:system/etc/media_profiles.xml \
                      device/oneplus/oneplus2/media/media_codecs.xml:system/etc/media_codecs.xml \
                      device/oneplus/oneplus2/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

$(call inherit-product, device/oneplus/oneplus2/common64.mk)

#msm8996 platform WLAN Chipset
WLAN_CHIPSET := qca_cld

#Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

# Audio configuration file
-include $(TOPDIR)hardware/qcom/audio/configs/msm8994/msm8994.mk

PRODUCT_PACKAGES += audiod
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# WLAN driver configuration files
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus2/wifi/WCNSS_cfg.dat:system/etc/wifi/WCNSS_cfg.dat \
    device/oneplus/oneplus2/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/oneplus/oneplus2/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/oneplus/oneplus2/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/oneplus/oneplus2/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/oneplus/oneplus2/wifi/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    device/oneplus/oneplus2/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/oneplus/oneplus2/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny

# Lights
PRODUCT_PACKAGES += \
    lights.qcom

# IPA
PRODUCT_PACKAGES += \
    ipacm \
    ipacm-diag \
    IPACM_cfg.xml

# GPS
PRODUCT_PACKAGES += \
    gps.msm8994 \
    flp.conf \
    gps.conf \
    izat.conf \
    lowi.conf \
    quipc.conf \
    sap.conf \
    xtwifi.conf

# Camera
PRODUCT_PACKAGES += \
    camera.msm8994 \
    libshim_camera \
    libshim_ims-camera \
    sensors.hal.tof \
    sensors.ssc.wrapper

# Keylayout
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus2/keylayout/fpc1020.kl:system/usr/keylayout/fpc1020.kl \
    device/oneplus/oneplus2/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl

#FEATURE_OPENGLES_EXTENSION_PACK support string config file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

PRODUCT_PACKAGES += \
    wpa_supplicant \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus2/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf \
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
    device/oneplus/oneplus2/sensors/hals.conf:system/etc/sensors/hals.conf

# MIDI feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

# Fingerprint sensor
PRODUCT_PACKAGES += fingerprintd
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# Tools
PRODUCT_PACKAGES += \
    libtinyxml \
    libtinyxml2 \
    libjson \
    libprotobuf-cpp-full

# QPerformance
PRODUCT_BOOT_JARS += QPerformance

#ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app

PRODUCT_AAPT_CONFIG += xlarge large

# No sdcard
PRODUCT_CHARACTERISTICS := nosdcard

#for android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files

# Call the proprietary setup
$(call inherit-product, vendor/oneplus/oneplus2/oneplus2-vendor.mk)
