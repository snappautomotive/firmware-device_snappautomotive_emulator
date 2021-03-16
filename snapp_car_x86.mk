# Copyright (c)2021 Al Sutton

PRODUCT_PACKAGE_OVERLAYS := device/generic/car/common/overlay

$(call inherit-product, device/generic/car/emulator/aosp_car_emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_x86.mk)

# Boot animation
PRODUCT_COPY_FILES += \
    device/snappautomotive/emulator/bootanimations/bootanimation.zip:system/media/bootanimation.zip

EMULATOR_VENDOR_NO_SOUND := true
PRODUCT_NAME := snapp_car_x86
PRODUCT_DEVICE := generic_car_x86
PRODUCT_BRAND := Android
PRODUCT_MODEL := Snapp Automotive on x86 emulator
