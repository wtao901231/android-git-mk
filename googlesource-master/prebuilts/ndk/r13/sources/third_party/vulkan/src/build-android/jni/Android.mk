# Copyright 2015 The Android Open Source Project
# Copyright (C) 2015 Valve Corporation

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#      http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(abspath $(call my-dir))
SRC_DIR := $(LOCAL_PATH)/../../
LAYER_DIR := $(LOCAL_PATH)/../generated

# specific for NDK build
SHADERC_DIR := $(SRC_DIR)../shaderc
GLSLANG_DIR := $(SHADERC_DIR)/glslang
SPIRV_TOOLS_DIR := $(SHADERC_DIR)/spirv-tools

include $(CLEAR_VARS)
LOCAL_MODULE := layer_utils
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_config.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_extension_utils.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_utils.cpp
LOCAL_C_INCLUDES += $(SRC_DIR)/include \
                    $(SRC_DIR)/layers \
                    $(SRC_DIR)/loader
LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := VkLayer_core_validation
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/core_validation/core_validation.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/core_validation/descriptor_sets.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_table.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/unique_objects/vk_safe_struct.cpp
LOCAL_C_INCLUDES += $(SRC_DIR)/include \
                    $(SRC_DIR)/layers \
                    $(LAYER_DIR)/include \
                    $(SRC_DIR)/loader \
                    $(GLSLANG_DIR) \
                    $(SPIRV_TOOLS_DIR)/include
LOCAL_STATIC_LIBRARIES += layer_utils SPIRV-Tools-prebuilt
LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
LOCAL_LDLIBS    := -llog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := VkLayer_device_limits
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/device_limits/device_limits.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_table.cpp
LOCAL_C_INCLUDES += $(SRC_DIR)/include \
                    $(SRC_DIR)/layers \
                    $(LAYER_DIR)/include \
                    $(SRC_DIR)/loader
LOCAL_STATIC_LIBRARIES += layer_utils
LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
LOCAL_LDLIBS    := -llog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := VkLayer_image
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/image/image.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_table.cpp
LOCAL_C_INCLUDES += $(SRC_DIR)/include \
                    $(SRC_DIR)/layers \
                    $(LAYER_DIR)/include \
                    $(SRC_DIR)/loader
LOCAL_STATIC_LIBRARIES += layer_utils
LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
LOCAL_LDLIBS    := -llog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := VkLayer_parameter_validation
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/parameter_validation/parameter_validation.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_table.cpp
LOCAL_C_INCLUDES += $(SRC_DIR)/include \
                    $(LAYER_DIR)/include \
                    $(SRC_DIR)/layers \
                    $(SRC_DIR)/loader
LOCAL_STATIC_LIBRARIES += layer_utils
LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
LOCAL_LDLIBS    := -llog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := VkLayer_object_tracker
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/object_tracker/object_tracker.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_table.cpp
LOCAL_C_INCLUDES += $(SRC_DIR)/include \
                    $(SRC_DIR)/layers \
                    $(LAYER_DIR)/include \
                    $(SRC_DIR)/loader
LOCAL_STATIC_LIBRARIES += layer_utils
LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
LOCAL_LDLIBS    := -llog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := VkLayer_threading
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/threading/threading.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_table.cpp
LOCAL_C_INCLUDES += $(SRC_DIR)/include \
                    $(SRC_DIR)/layers \
                    $(LAYER_DIR)/include \
                    $(SRC_DIR)/loader
LOCAL_STATIC_LIBRARIES += layer_utils
LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
LOCAL_LDLIBS    := -llog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := VkLayer_unique_objects
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/unique_objects/unique_objects.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/unique_objects/vk_safe_struct.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_table.cpp
LOCAL_C_INCLUDES += $(SRC_DIR)/include \
                    $(SRC_DIR)/layers \
                    $(LAYER_DIR)/include \
                    $(SRC_DIR)/loader
LOCAL_STATIC_LIBRARIES += layer_utils
LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
LOCAL_LDLIBS    := -llog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := VkLayer_swapchain
LOCAL_SRC_FILES += $(LAYER_DIR)/layer-src/swapchain/swapchain.cpp
LOCAL_SRC_FILES += $(LAYER_DIR)/common/vk_layer_table.cpp
LOCAL_C_INCLUDES += $(SRC_DIR)/include \
                    $(SRC_DIR)/layers \
                    $(LAYER_DIR)/include \
                    $(SRC_DIR)/loader
LOCAL_STATIC_LIBRARIES += layer_utils
LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
LOCAL_LDLIBS    := -llog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := SPIRV-Tools-prebuilt
LOCAL_SRC_FILES := $(SHADERC_DIR)/shaderc/android_test/obj/local/$(TARGET_ARCH_ABI)/libSPIRV-Tools.a
include $(PREBUILT_STATIC_LIBRARY)

$(call import-module,third_party/googletest)
