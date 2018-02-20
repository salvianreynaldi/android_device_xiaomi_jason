LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := get_offsets.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../camera/QCamera2/stack/common

LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := get_offsets
LOCAL_MODULE_CLASS := EXECUTABLES

LOCAL_CFLAGS := -Wall -Werror

LOCAL_32_BIT_ONLY := true

include $(BUILD_EXECUTABLE)