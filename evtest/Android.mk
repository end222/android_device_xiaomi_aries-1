LOCAL_PATH:= $(call my-dir)

ifeq ($(TARGET_DEVICE), aries)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_C_INCLUDES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_SRC_FILES:= evtest.c
LOCAL_MODULE:= evtest
LOCAL_CFLAGS :=
LOCAL_SHARED_LIBRARIES := libcutils
include $(BUILD_EXECUTABLE)
endif
