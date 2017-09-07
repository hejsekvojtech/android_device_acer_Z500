#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

ifneq ($(TARGET_PREBUILT_KERNEL),)
$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr:
	mkdir -p $@
endif

# include the non-open-source counterpart to this file
-include vendor/acer/acer_Z500/AndroidBoardVendor.mk

# copy keylayout overrides
$(shell mkdir -p $(TARGET_OUT_KEYLAYOUT); \
    cp -pf device/acer/acer_Z500/keylayout/Generic.kl $(TARGET_OUT_KEYLAYOUT))

# copy permissions overrides
$(shell mkdir -p $(TARGET_OUT_ETC)/permissions; \
    cp -pf device/acer/acer_Z500/configs/android.hardware.camera.xml $(TARGET_OUT_ETC)/permissions)