PRODUCT_PACKAGE_OVERLAYS := device/snappautomotive/emulator/overlay

EMULATOR_VENDOR_NO_SENSORS := true

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

include device/snappautomotive/common/additions.mk

$(call inherit-product, device/generic/car/emulator/aosp_car_emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_arm64.mk)

EMULATOR_VENDOR_NO_SOUND := true
PRODUCT_NAME := snapp_car_arm64
PRODUCT_DEVICE := emulator_arm64
PRODUCT_BRAND := Android
PRODUCT_MODEL := Snapp Automotive on arm64 emulator
