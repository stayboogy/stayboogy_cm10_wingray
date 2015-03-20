LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

TARGET_KERNEL_CONFIG := stayboogy_wingray_defconfig

TARGET_KERNEL_SOURCE := kernel/moto/wingray-bigpart

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

