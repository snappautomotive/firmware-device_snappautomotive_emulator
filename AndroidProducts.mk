# Copyright (c)2021 Al Sutton

PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/sdk_car_snapp_x86_64.mk \
        $(LOCAL_DIR)/sdk_car_snapp_arm64.mk 

COMMON_LUNCH_CHOICES := \
	sdk_car_snapp_x86_64-userdebug \
	sdk_car_snapp_arm64-userdebug

EMULATOR_VENDOR_NO_SOUND_TRIGGER := false
