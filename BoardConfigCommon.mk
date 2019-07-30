#
# Copyright (C) 2019 The LineageOS Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

PLATFORM_PATH := device/sony/yoshino

TARGET_SPECIFIC_HEADER_PATH := $(PLATFORM_PATH)/include

BOARD_VENDOR := sony

# we are too big to fit in
PRODUCT_SKIP_FINGERPRINT_FROM_FILE := true

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8998
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOARD_PLATFORM_GPU := qcom-adreno540

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_UEFI := true
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 zram.backend=z3fold firmware_class.path=/vendor/firmware_mnt/image
BOARD_KERNEL_CMDLINE += androidboot.configfs=true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/sony/msm8998
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# ANT+
#BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

### AUDIO
# BOARD_SUPPORTS_QAHW := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_SRS_TRUEMEDIA := false

AUDIO_FEATURE_ENABLED_3D_AUDIO := false # UNKNOWN
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true # STOCK
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true # STOCK
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true # STOCK
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true # STOCK
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true # STOCK
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := false # STOCK
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := false # STOCK
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true # STOCK
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true # STOCK
AUDIO_FEATURE_ENABLED_DEV_ARBI := false # STOCK
AUDIO_FEATURE_ENABLED_DISPLAY_PORT := true # STOCK
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false # STOCK
AUDIO_FEATURE_ENABLED_DTS_EAGLE := false # STOCK
AUDIO_FEATURE_ENABLED_DYNAMIC_LOG := false # STOCK
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true # STOCK
AUDIO_FEATURE_ENABLED_EXTN_RESAMPLER := false
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true # STOCK
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true # STOCK
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true # STOCK
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true # STOCK
AUDIO_FEATURE_ENABLED_HDMI_EDID := true # STOCK
AUDIO_FEATURE_ENABLED_HDMI_PASSTHROUGH := true # STOCK
AUDIO_FEATURE_ENABLED_HDMI_SPK := false # STOCK
AUDIO_FEATURE_ENABLED_HFP := true # STOCK
AUDIO_FEATURE_ENABLED_HIFI_AUDIO := false # STOCK
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false # STOCK
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true # STOCK
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true # STOCK
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true # UNUSED
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true # UNUSED
AUDIO_FEATURE_ENABLED_PM_SUPPORT := false # STOCK
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true # STOCK
AUDIO_FEATURE_ENABLED_RAS := true # STOCK
AUDIO_FEATURE_ENABLED_SND_MONITOR := true # STOCK
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true # STOCK
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true # STOCK
AUDIO_FEATURE_ENABLED_SPLIT_A2DP := false # disabled by prop even if we have bthost_if
AUDIO_FEATURE_ENABLED_SSR := false # STOCK
AUDIO_FEATURE_ENABLED_USB_TUNNEL_AUDIO := true # STOCK = false?
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true # STOCK
AUDIO_FEATURE_ENABLED_VOICE_PRINT := false
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true # STOCK
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true # STOCK
AUDIO_FEATURE_ENABLED_KEEP_ALIVE := false # STOCK = true

AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true # UNKNOWN

DOLBY_ENABLE := false
DTS_CODEC_M_ := false

MM_AUDIO_ENABLED_FTM := true
MM_AUDIO_ENABLED_SAFX := true

TARGET_USES_QCOM_MM_AUDIO := true

USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

USE_LEGACY_AUDIO_DAEMON := false
USE_LEGACY_AUDIO_MEASUREMENT := false

# Bluetooth
BOARD_HAS_QCA_BT_ROME := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_USES_QTI_CAMERA2CLIENT := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_USES_MEDIA_EXTENSIONS := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# CNE and DPM
BOARD_USES_QCNE := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Display
BOARD_USES_ADRENO := true

TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_HWC2 := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_OVERLAY := true
TARGET_USES_COLOR_METADATA := true
TARGET_CONTINUOUS_SPLASH_ENABLED := true
USE_OPENGL_RENDERER := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

MAX_VIRTUAL_DISPLAY_DIMENSION := 4096

OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so

VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

TARGET_HAS_HDR_DISPLAY := true

# Enable dexpreopt to speed boot time
ifeq ($(HOST_OS),linux)
  ifeq ($(call match-word-in-list,$(TARGET_BUILD_VARIANT),user),true)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
    endif
  endif
endif

# Filesystem
TARGET_FS_CONFIG_GEN += $(PLATFORM_PATH)/config.fs

TARGET_EXFAT_DRIVER := exfat

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# HIDL
DEVICE_MANIFEST_FILE := $(PLATFORM_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(PLATFORM_PATH)/compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB := libinit_yoshino

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# NFC
BOARD_NFC_CHIPSET := pn553
BOARD_NFC_HAL_SUFFIX := msm8998

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 398458880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7707033600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54587727872
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_COPY_OUT_VENDOR := vendor
TARGET_USES_MKE2FS := true

# Power
TARGET_USES_INTERACTION_BOOST := true

# Recovery
TARGET_RECOVERY_FSTAB := $(PLATFORM_PATH)/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_EMMC_WIPE := true

# RIL
TARGET_RIL_VARIANT := caf
#PROTOBUF_SUPPORTED := true
TARGET_USES_OLD_MNC_FORMAT := true

# Root
BOARD_ROOT_EXTRA_SYMLINKS += /$(TARGET_COPY_OUT_VENDOR)/dsp:/dsp
BOARD_ROOT_EXTRA_SYMLINKS += /$(TARGET_COPY_OUT_VENDOR)/firmware_mnt:/firmware
BOARD_ROOT_EXTRA_SYMLINKS += /$(TARGET_COPY_OUT_VENDOR)/bt_firmware:/bt_firmware
BOARD_ROOT_EXTRA_SYMLINKS += /mnt/vendor/persist:/persist

# SELinux
#include device/qcom/sepolicy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += $(PLATFORM_PATH)/sepolicy/vendor
#BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(PLATFORM_PATH)/sepolicy/private

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

### WIFI
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
HOSTAPD_VERSION := VER_0_8_X
# This doesn't work because wifi driver is a background task
# we would need to wait till the fwpath is ready
# WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
# WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_FW_PATH_STA := "sta"
# If built into kernel /sys/kernel/boot_wlan/boot_wlan 
# with 1 and 0 should be used
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_ON := ON
WIFI_DRIVER_STATE_OFF := OFF
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_OPERSTATE_PATH := "/sys/class/net/wlan0/operstate"

# inherit from the proprietary version
-include vendor/sony/yoshino/BoardConfigVendor.mk
