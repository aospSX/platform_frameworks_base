LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	system_init.cpp

base = $(LOCAL_PATH)/../../..
native = $(LOCAL_PATH)/../../../../native

LOCAL_C_INCLUDES := \
	$(base)/services/camera/libcameraservice \
	$(base)/services/audioflinger \
	$(native)/services/surfaceflinger \
	$(base)/services/sensorservice \
	$(base)/media/libmediaplayerservice \
	$(JNI_H_INCLUDE)

LOCAL_C_INCLUDES += hardware/qcom/display/libqcomui

LOCAL_SHARED_LIBRARIES := \
	libandroid_runtime \
	libsensorservice \
	libsurfaceflinger \
	libaudioflinger \
    libcameraservice \
    libmediaplayerservice \
    libinput \
	libutils \
	libbinder \
	libcutils

LOCAL_MODULE:= libsystem_server

include $(BUILD_SHARED_LIBRARY)
