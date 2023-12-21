PRODUCT_PACKAGE_OVERLAYS := device/snappautomotive/emulator/overlay

EXCLUDE_FIRMWARE_UPDATER := true
ENABLE_REAR_VIEW_CAMERA_SAMPLE := true
ENABLE_EVS_SAMPLE := true

$(call inherit-product, device/snappautomotive/common/additions.mk)
$(call inherit-product, device/generic/car/emulator/aosp_car_emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_x86_64.mk)

PRODUCT_PACKAGES += \
    android.hardware.soundtrigger@2.3-impl \
    android.hardware.automotive.evs@1.1-service

EMULATOR_VENDOR_NO_SOUND := true
PRODUCT_NAME := snapp_car_x86_64
PRODUCT_DEVICE := emulator_x86_64
PRODUCT_BRAND := Android
PRODUCT_MODEL := Snapp Automotive emulator for x86_64
