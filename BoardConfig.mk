# config.mk
#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := msm8994
TARGET_BOOTLOADER_BOARD_NAME := msm8994

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

TARGET_CPU_CORTEX_A53 := true

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_NO_BOOTLOADER := false
BOOTLOADER_GCC_VERSION := arm-eabi-4.8
BOOTLOADER_PLATFORM := msm8994
TARGET_NO_KERNEL := false
TARGET_KERNEL_APPEND_DTB := true
-include $(QCPATH)/common/oneplus2/BoardConfigVendor.mk

# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oneplus/oneplus2

USE_OPENGL_RENDERER := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_USES_C2D_COMPOSITION := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 59047394304
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USES_64_BIT_BINDER := true

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_OVERLAY := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 2048

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 boot_cpus=0-5

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := false
TARGET_KERNEL_SOURCE := kernel/oneplus/msm8994
TARGET_KERNEL_CONFIG := oneplus2_defconfig

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

BOARD_USES_GENERIC_AUDIO := true

# Releasetools extension for shipping firmware
TARGET_RELEASETOOLS_EXTENSIONS := device/oneplus/oneplus2

TARGET_NO_RPC := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_INIT_VENDOR_LIB := libinit_msm

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/oneplus/oneplus2/include

# Camera
TARGET_ALLOW_TEXT_RELOCATIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X

TARGET_RECOVERY_FSTAB := device/oneplus/oneplus2/rootdir/etc/fstab.qcom

# Force camera module to be compiled only in 32-bit mode on 64-bit systems
# Once camera module can run in the native mode of the system (either
# 32-bit or 64-bit), the following line should be deleted
BOARD_QTI_CAMERA_32BIT_ONLY := true

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED := true

#Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := false

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/oneplus/oneplus2/init/init_oneplus2.cpp

#Enable peripheral manager
TARGET_PER_MGR_ENABLED := true

TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

BOARD_SEPOLICY_DIRS += device/oneplus/oneplus2/sepolicy

# Enable sensor multi HAL
USE_SENSOR_MULTI_HAL := true

TARGET_USES_IMS := true

# Gestures
TARGET_GESTURES_NODE := "/proc/touchpanel/gesture_enable"
