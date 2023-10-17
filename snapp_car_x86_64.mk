PRODUCT_PACKAGE_OVERLAYS := device/snappautomotive/emulator/overlay

EXCLUDE_FIRMWARE_UPDATER := true

$(call inherit-product, device/snappautomotive/common/additions.mk)
$(call inherit-product, device/generic/car/aosp_car_x86_64.mk)

PRODUCT_NAME := snapp_car_x86_64
PRODUCT_DEVICE := emulator_x86_64
PRODUCT_MODEL := Snapp Automotive emulator for x86_64
