PRODUCT_PACKAGE_OVERLAYS := device/snappautomotive/emulator/overlay

EXCLUDE_FIRMWARE_UPDATER := true

$(call inherit-product, device/generic/car/emulator/aosp_car_emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_arm64.mk)

include device/snappautomotive/common/additions.mk

EMULATOR_VENDOR_NO_SOUND := true
PRODUCT_NAME := snapp_car_arm64
PRODUCT_DEVICE := generic_arm64
PRODUCT_BRAND := Android
PRODUCT_MODEL := Snapp Automotive AAOS for arm64 emulators
