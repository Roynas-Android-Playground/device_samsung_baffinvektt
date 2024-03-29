
DEVICE_PATH := device/samsung/baffinvektt

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos4
TARGET_BOOTLOADER_BOARD_NAME := smdk4x12
TARGET_SOC := exynos4x12
TARGET_HAL_PATH := hardware/samsung/exynos4/hal

# Header
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/bluetooth/vnd_smdk4x12.txt

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_CLANG_COMPILE := false
TARGET_KERNEL_CONFIG := noperf_defconfig

BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 83886080
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 83886080
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.smdk4x12

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6260

# FIMC
BOARD_USES_FIMGAPI := true

# Rootdir
BOARD_ROOT_EXTRA_FOLDERS := efs

# SPL
VENDOR_SECURITY_PATCH := 2015-08-05

# Prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# SAR
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Display
TARGET_SCREEN_DENSITY := 320

# Sepolicy
BOARD_SEPOLICY_TEE_FLAVOR := mobicore
include device/samsung_slsi/sepolicy/sepolicy.mk
include hardware/samsung-ext/interfaces/sepolicy/SEPolicy.mk

# Treble
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# WiFi
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_${BOARD_WLAN_DEVICE}
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_${BOARD_WLAN_DEVICE}
WPA_SUPPLICANT_VERSION := VER_0_8_X

WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/etc/wifi/bcmdhd_sta.bin_b2"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/etc/wifi/bcmdhd_apsta.bin_b2"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/etc/wifi/bcmdhd_p2p.bin_b2"
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

include vendor/samsung/baffinvektt/BoardConfigVendor.mk
