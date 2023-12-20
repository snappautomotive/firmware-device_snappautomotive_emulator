PRODUCT_PACKAGE_OVERLAYS := device/snappautomotive/emulator/overlay

EXCLUDE_FIRMWARE_UPDATER := true

$(call inherit-product, device/snappautomotive/common/additions.mk)
$(call inherit-product, device/generic/car/emulator/aosp_car_emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_x86_64.mk)

PRODUCT_PACKAGES += \
    android.hardware.soundtrigger@2.3-impl

EMULATOR_VENDOR_NO_SOUND := true
PRODUCT_NAME := snapp_car_x86_64
PRODUCT_DEVICE := emulator_x86_64
PRODUCT_BRAND := Android
PRODUCT_MODEL := Snapp Automotive emulator for x86_64
