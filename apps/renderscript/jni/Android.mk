LOCAL_PATH:= $(call my-dir)

# === rstest ===

include $(CLEAR_VARS)

LOCAL_MODULE           := rstest-standalone
LOCAL_SRC_FILES        := rstest.cpp
LOCAL_STATIC_LIBRARIES := android_native_app_glue
LOCAL_LDLIBS           := -lm -llog -landroid generated_blur_rs_float.o  generated_blur_arm_float.o generated_copy_rs_float.o generated_copy_arm_float.o \
                          generated_blur_rs_uint8.o  generated_blur_arm_uint8.o generated_copy_rs_uint8.o generated_copy_arm_uint8.o
LOCAL_ARM_MODE         := arm

LOCAL_CPPFLAGS += -std=c++11

LOCAL_C_INCLUDES := ./

include $(BUILD_EXECUTABLE)

# === rstest library ===

include $(CLEAR_VARS)

LOCAL_MODULE           := rstest
LOCAL_SRC_FILES        := rstest.cpp
LOCAL_STATIC_LIBRARIES := android_native_app_glue
LOCAL_LDLIBS           := -lm -llog -landroid generated_blur_rs_float.o generated_blur_arm_float.o generated_copy_rs_float.o generated_copy_arm_float.o \
                          generated_blur_rs_uint8.o  generated_blur_arm_uint8.o generated_copy_rs_uint8.o generated_copy_arm_uint8.o
LOCAL_ARM_MODE         := arm

LOCAL_CPPFLAGS += -std=c++11

LOCAL_C_INCLUDES := ./


include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)


$(call import-module,android/native_app_glue)
