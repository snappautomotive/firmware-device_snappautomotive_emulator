PRODUCT_PACKAGE_OVERLAYS := \
      device/generic/car/common/overlay \
      device/snappautomotive/emulator/overlay

EXCLUDE_FIRMWARE_UPDATER := true
$(call inherit-product, device/snappautomotive/common/additions.mk)

EMULATOR_VENDOR_NO_SENSORS := true
$(call inherit-product, device/generic/car/emulator/aosp_car_emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_phone_x86.mk)

EMULATOR_VENDOR_NO_SOUND := true
PRODUCT_NAME := snapp_car_x86
PRODUCT_DEVICE := emulator_x86
PRODUCT_BRAND := Android
PRODUCT_MODEL := Snapp Automotive emulator for x86
