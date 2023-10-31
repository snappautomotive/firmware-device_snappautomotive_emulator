PRODUCT_PACKAGE_OVERLAYS := device/snappautomotive/emulator/overlay

EXCLUDE_FIRMWARE_UPDATER := true
$(call inherit-product, device/snappautomotive/common/additions.mk)

EMULATOR_VENDOR_NO_SENSORS := true
$(call inherit-product, device/generic/car/emulator/aosp_car_emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_x86_64.mk)
$(call inherit-product, device/generic/car/emulator/audio/car_emulator_audio.mk)

PRODUCT_SDK_ADDON_COPY_FILES := \
    device/generic/goldfish/data/etc/encryptionkey.img:images/${TARGET_CPU_ABI}/encryptionkey.img \
    device/generic/car/car_x86_64/manifest.ini:manifest.ini

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

DEVICE_PACKAGE_OVERLAYS += device/generic/car/car_x86_64/overlay

PRODUCT_PACKAGES += android.hardware.automotive.vehicle@2.0-default-service

EMULATOR_VENDOR_NO_SOUND := true
PRODUCT_NAME := snapp_car_x86_64
PRODUCT_DEVICE := emulator_x86_64
PRODUCT_BRAND := Android
PRODUCT_MODEL := Snapp Automotive emulator for x86_64

PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := \
    device/generic/car/car_x86_64/source.properties
