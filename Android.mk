LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), oplus_mssi_64_cn)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
