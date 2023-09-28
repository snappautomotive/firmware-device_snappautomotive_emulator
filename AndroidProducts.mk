# Copyright (c)2021 Al Sutton

PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/snapp_car_x86_64.mk \
        $(LOCAL_DIR)/snapp_car_arm64.mk 

#	$(LOCAL_DIR)/snapp_car_x86.mk \ <-- Disabled, does not boot

COMMON_LUNCH_CHOICES := \
	snapp_car_x86_64-userdebug \
	snapp_car_arm64-userdebug

EMULATOR_VENDOR_NO_SOUND_TRIGGER := false
