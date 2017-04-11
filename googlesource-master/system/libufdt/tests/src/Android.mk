# Copyright 2016 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)

###################################################

include $(CLEAR_VARS)

LOCAL_MODULE := ufdt_gen_test_dts
LOCAL_SRC_FILES := ufdt_gen_test_dts.c

include $(BUILD_HOST_EXECUTABLE)

###################################################

include $(CLEAR_VARS)

LOCAL_MODULE := ufdt_apply_overlay
LOCAL_SRC_FILES := ufdt_overlay_test_app.c util.c
LOCAL_STATIC_LIBRARIES := \
    libufdt \
    libfdt \
    libufdt_sysdeps
LOCAL_REQUIRED_MODULES := dtc

include $(BUILD_HOST_EXECUTABLE)

###################################################

include $(CLEAR_VARS)

LOCAL_MODULE := ufdt_apply_overlay
LOCAL_SRC_FILES := ufdt_overlay_test_app.c util.c
LOCAL_STATIC_LIBRARIES := \
    libufdt \
    libfdt \
    libufdt_sysdeps
LOCAL_REQUIRED_MODULES := dtc

include $(BUILD_EXECUTABLE)

###################################################

include $(CLEAR_VARS)

LOCAL_MODULE := fdt_apply_overlay
LOCAL_SRC_FILES := fdt_overlay_test_app.c util.c
LOCAL_STATIC_LIBRARIES := \
    libfdt \
    libufdt_sysdeps
LOCAL_REQUIRED_MODULES := dtc

include $(BUILD_HOST_EXECUTABLE)

###################################################

include $(CLEAR_VARS)

LOCAL_MODULE := extract_dtb
LOCAL_SRC_FILES := extract_dtb.c util.c
LOCAL_STATIC_LIBRARIES := \
    libfdt \
    libufdt_sysdeps
LOCAL_REQUIRED_MODULES := dtc

include $(BUILD_HOST_EXECUTABLE)

###################################################

include $(CLEAR_VARS)

LOCAL_MODULE := fdt_apply_overlay
LOCAL_SRC_FILES := fdt_overlay_test_app.c util.c
LOCAL_STATIC_LIBRARIES := \
    libfdt \
    libufdt_sysdeps
LOCAL_REQUIRED_MODULES := dtc

include $(BUILD_EXECUTABLE)

###################################################
