PRODUCT_PACKAGE_OVERLAYS := device/snappautomotive/emulator/overlay

EXCLUDE_FIRMWARE_UPDATER := true
$(call inherit-product, device/snappautomotive/common/additions.mk)

$(call inherit-product, device/generic/car/sdk_car_x86.mk)

PRODUCT_NAME := snapp_car_x86
PRODUCT_MODEL := Snapp Automotive on x86 emulator
