LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := liblog libcutils libgui libbinder libutils libui

LOCAL_SRC_FILES := \
    camera_shim.c

LOCAL_MODULE := libcamera_shim
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_32_BIT_ONLY := true

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    Parcel.cpp

LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libshim_parcel
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

# healthd
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    healthd_board_kenzo.cpp

LOCAL_MODULE := libhealthd.kenzo
LOCAL_C_INCLUDES := system/core/healthd
LOCAL_CFLAGS := -Werror

include $(BUILD_STATIC_LIBRARY)
