#
# Copyright (C) 2014 The Android Open-Source Project
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

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

ENABLE_CPUSETS := true

TARGET_NO_BOOTLOADER := true

# Inline kernel building
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := JZ_f460_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/tiger6
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_SEPARATED_DT := true
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := /home/jz-shminer/lg/f460/f460/android-toolchain/bin

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x02000000

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 dwc3_msm.cpu_to_affin=1 androidboot.hardware=tiger6 androidboot.selinux=permissive lpm_levels.sleep_disabled=1 androidboot.selinux=permissive                                                                                                                                                                        

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
TARGET_REQUIRES_BUMP := true 

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_USES_OVERLAY := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_EGL_CFG := device/lge/tiger6/egl.cfg

BOARD_USES_ALSA_AUDIO := true

# Wifi related defines
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_USES_SECURE_SERVICES := true


TARGET_BOARD_PLATFORM := msm8084
TARGET_BOOTLOADER_BOARD_NAME := tiger6

USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_HW_DISK_ENCRYPTION := false

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

TARGET_TOUCHBOOST_FREQUENCY := 1500
TARGET_USERIMAGES_USE_F2FS := true                                                                        
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2583691264 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27116175360
BOARD_CACHEIMAGE_PARTITION_SIZE := 889192448
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144

BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_RECOVERY_FSTAB = device/lge/tiger6/fstab.tiger6

BOARD_SEPOLICY_DIRS += device/lge/tiger6/sepolicy

HAVE_ADRENO_SOURCE:= false

OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
# BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

USE_DEVICE_SPECIFIC_CAMERA:= true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true


