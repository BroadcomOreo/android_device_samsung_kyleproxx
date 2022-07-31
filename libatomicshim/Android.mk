LOCAL_PATH := $(call my-dir)

# atomic symbols
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := atomic_shim.cpp
    LOCAL_MODULE := libatomicshim
    LOCAL_PROPRIETARY_MODULE := true

    include $(BUILD_SHARED_LIBRARY)