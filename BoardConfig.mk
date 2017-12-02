DEVICE_TREE := device/apple/iphone_7.1

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := a10_fusion

# Platform
TARGET_BOARD_PLATFORM := a10_fusion

# Flags
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := generic
TARGET_2ND_CPU_VARIANT := cortex-a53



TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/Image.gz-dtb

# Boot image
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02200000 --tags_offset 0x00000100

# Partitions this wont work with an iphone right now
##BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x002800000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x002880000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x15D800000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xD0F800000
#    := 0x04D000000
#BOARD_FLASH_BLOCK_SIZE := 0x40000

# File systems
#BOARD_HAS_LARGE_FILESYSTEM := true
#TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 149
TW_SCREEN_BLANK_ON_BOOT := true

# No love for the wicked (device ships with M)
TW_EXCLUDE_SUPERSU := true

# Encryption support (it also wont work)
#TW_INCLUDE_CRYPTO := true
#TARGET_HW_DISK_ENCRYPTION := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true
#TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd

# Debug flags
TWRP_INCLUDE_LOGCAT := true
