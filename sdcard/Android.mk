LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := sdcard.cpp fuse.cpp
LOCAL_MODULE := libsdcard
LOCAL_CFLAGS := -Wall -Wno-unused-parameter -Werror -Ofast
LOCAL_SHARED_LIBRARIES := libbase libcutils libminijail libpackagelistparser

LOCAL_SANITIZE := integer
LOCAL_CLANG := true
LOCAL_MODULE_TAGS := optional
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := main.c
LOCAL_MODULE := sdcard
LOCAL_CFLAGS := -Wall -Wno-unused-parameter -Werror -Ofast
LOCAL_STATIC_LIBRARIES := libsdcard
LOCAL_SHARED_LIBRARIES := libbase libc libcutils libminijail libpackagelistparser
include $(BUILD_EXECUTABLE)
