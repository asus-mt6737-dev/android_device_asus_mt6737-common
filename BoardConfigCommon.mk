COMMON_PATH := device/asus/mt6737-common
VENDOR_PATH := vendor/asus/mt6737-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

# Audio
BOARD_USES_MTK_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1

# Backlights
TARGET_PROVIDES_LIBLIGHT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Board
BOARD_NO_SECURE_DISCARD := true
BOARD_VENDOR := asus
PRODUCT_BOARD := MT6737

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6735

# Camera
USE_CAMERA_STUB := true

# CFLAGS / CPPFLAGS
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Configure jemalloc for low memory
MALLOC_SVELTE := true

# CyanogenMod Hardware
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += $(COMMON_PATH)/cmhw

# Disable API check
WITHOUT_CHECK_API := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Exclude AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true
BOARD_CONNECTIVITY_MODULE := conn_soc

# Graphics
USE_OPENGL_RENDERER := true
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
BOARD_EGL_CFG := $(COMMON_PATH)/configs/egl.cfg
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Kernel
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
#TARGET_KERNEL_SOURCE := kernel/asus/mt6737
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
#BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00000000 --tags_offset 0x0df88000 --base 0x40078000

# Legacy blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Media
MTK_MEDIA_PROFILES := true
BOARD_USES_MTK_MEDIA_PROFILES := true

# MediaTek Flags
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

# MediaTek Graphics
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.5.0
MTK_GPU_VERSION := mali midgard r12p1
OVERRIDE_RS_DRIVER := libRSDriver_mtk.so

# Misc
EXTENDED_FONT_FOOTPRINT := true

# OTA
BLOCK_BASED_OTA := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3464495104
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10936320000
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
TARGET_BOARD_PLATFORM_GPU := mali-720mp2

# Props
TARGET_SYSTEM_PROP += $(COMMON_PATH)/system.prop

# RIL
BOARD_RIL_CLASS := ../../../$(COMMON_PATH)/ril
SIM_COUNT := 2

# SELinux
BOARD_SEPOLICY_DIRS := $(COMMON_PATH)/sepolicy
BOARD_SECCOMP_POLICY := $(COMMON_PATH)/seccomp-policy

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Shim Symbols
LINKER_FORCED_SHIM_LIBS := \
    /system/vendor/bin/mtk_agpsd|libshim_gps.so \
    /system/vendor/lib/libcam_utils.so|libshim_camera.so \
    /system/vendor/lib64/libcam_utils.so|libshim_camera.so \
    /system/vendor/lib/libcam_utils.so|libshim_gui.so \
    /system/vendor/lib64/libcam_utils.so|libshim_gui.so \
    /system/vendor/bin/vtservice|libshim_mal.so \
    /system/vendor/bin/vtservice|libshim_asc.so \
    /system/lib/liblog.so|libshim_xlog.so \
    /system/lib64/liblog.so|libshim_xlog.so \
    /system/vendor/lib/libvtmal.so|libshim_vt.so \
    /system/vendor/lib64/libvtmal.so|libshim_vt.so \
    /system/vendor/lib/libprogrambinary.so|libshim_program_binary.so \
    /system/vendor/lib64/libprogrambinary.so|libshim_program_binary.so \
    /system/vendor/lib/libui_ext.so|libshim_gui.so \
    /system/vendor/lib64/libui_ext.so|libshim_gui.so \
    /system/vendor/lib/libgui_ext.so|libshim_gui.so \
    /system/vendor/lib64/libgui_ext.so|libshim_gui.so \
    /system/vendor/lib/audio.primary.mt6737t.so|libshim_audio.so \
    /system/vendor/lib64/audio.primary.mt6737t.so|libshim_audio.so

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/recovery/recovery.fstab
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
RECOVERY_SDCARD_ON_DATA := true
# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true
# NTFS Support
TW_INCLUDE_FUSE_NTFS := true
# F2FS Support
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TW_INCLUDE_FUSE_F2FS := true

# TWRP
ifeq ($(WITH_TWRP),true)
DEVICE_RESOLUTION := 720x1280
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1280
TW_INCLUDE_CRYPTO := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_MAX_BRIGHTNESS := 255
TW_THEME := portrait_hdpi
TW_NO_SCREEN_BLANK := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en_EN
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INCLUDE_L_CRYPTO := true
TW_INCLUDE_CRYPTO := true
endif

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Wireless
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# Inherit proprietary blobs
include $(VENDOR_PATH)/BoardConfigVendor.mk
