PRODUCT_PACKAGE_OVERLAYS := device/snappautomotive/emulator/overlay

EXCLUDE_FIRMWARE_UPDATER := true
$(call inherit-product, device/snappautomotive/common/additions.mk)

$(call inherit-product, device/snappautomotive/emulator/sdk_car_arm64_fixed.mk)

PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

PRODUCT_NAME := snapp_car_arm64
PRODUCT_MODEL := Snapp Automotive on arm64 emulator
