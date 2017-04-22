LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := gpio-keys.kl
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := $(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := synaptics_dsx.kl
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := $(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

# Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/qca_cld; \
        ln -sf  /system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/WCNSS_qcom_wlan_nv.bin; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini)
