PRODUCT_PACKAGE_OVERLAYS := device/snappautomotive/emulator/overlay

EMULATOR_VENDOR_NO_SENSORS := true
EXCLUDE_FIRMWARE_UPDATER := true

include device/snappautomotive/common/additions.mk

$(call inherit-product, device/generic/car/emulator/aosp_car_emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_x86.mk)

EMULATOR_VENDOR_NO_SOUND := true
PRODUCT_NAME := snapp_car_x86
PRODUCT_DEVICE := generic_x86
PRODUCT_BRAND := Android
PRODUCT_MODEL := Snapp Automotive on x86 emulator
