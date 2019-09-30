# Primary Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_ABI := arm64-v8a

# Secondary Arch
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

TARGET_BOARD_PLATFORM := akebi96
ANDROID_64=true
WITH_DEXPREOPT ?= true
USE_OPENGL_RENDERER := true
BIONIC_TESTS ?= true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
ENABLE_SCHED_BOOST := false

BUILD_BROKEN_DUP_RULES := true

BOARD_FLASH_BLOCK_SIZE := 512

TARGET_BOOTIMAGE_USE_FAT := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true

BOARD_KERNEL_CMDLINE := androidboot.hardware=akebi96 androidboot.selinux=permissive firmware_class.path=/vendor/firmware
BOARD_KERNEL_CMDLINE += printk.devkmsg=on

#sepolicy
BOARD_SEPOLICY_DIRS := device/linaro/akebi96/sepolicy

# HAL's build config
# build config of feature graphics
TARGET_USES_HWC2 := true

# wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211

TARGET_COPY_OUT_VENDOR := vendor

TARGET_HAS_A53ERRATUM835769 := true

# Enable Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_VERSION := current

TARGET_BOOTLOADER_BOARD_NAME := $(TARGET_BOARD_PLATFORM)