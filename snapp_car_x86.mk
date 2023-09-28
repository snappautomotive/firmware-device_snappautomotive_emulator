PRODUCT_PACKAGE_OVERLAYS := \
    device/generic/car/common/overlay \
    device/snappautomotive/emulator/overlay

EXCLUDE_FIRMWARE_UPDATER := true
$(call inherit-product, device/snappautomotive/common/additions.mk)

EMULATOR_VENDOR_NO_SENSORS := true
$(call inherit-product, device/generic/car/emulator/aosp_car_emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_x86.mk)
$(call inherit-product, device/generic/car/emulator/audio/car_emulator_audio.mk)

# Packages needed to support x86 CarService startup
PRODUCT_PACKAGES += android.hardware.automotive.vehicle@2.0-default-service

EMULATOR_VENDOR_NO_SOUND := true
PRODUCT_NAME := snapp_car_x86
PRODUCT_DEVICE := generic_car_x86
PRODUCT_BRAND := Android
PRODUCT_MODEL := Snapp Automotive emulator for x86
