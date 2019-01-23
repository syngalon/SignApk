# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(MTK_A1_FEATURE),yes) 

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := FMRadio
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_OWNER := mtk
#LOCAL_JNI_SHARED_LIBRARIES := libfmjni

LOCAL_PROGUARD_ENABLED := disabled
LOCAL_PRIVILEGED_MODULE := true

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v7-appcompat
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-cardview


LOCAL_STATIC_JAVA_LIBRARIES += android-support-v4
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-preference
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-recyclerview
LOCAL_STATIC_JAVA_LIBRARIES += android-support-annotations


LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_RESOURCE_DIR += frameworks/support/v7/cardview/res
LOCAL_RESOURCE_DIR += frameworks/support/v7/appcompat/res
LOCAL_RESOURCE_DIR += frameworks/support/v7/preference/res
LOCAL_RESOURCE_DIR += frameworks/support/v7/recyclerview/res

# for mediatek sdk MediaRecorderEx and StorageManagerEx
LOCAL_JAVA_LIBRARIES += mediatek-framework


LOCAL_AAPT_FLAGS := --auto-add-overlay
LOCAL_AAPT_FLAGS += --extra-packages FreelyStyle_FMRadio
LOCAL_AAPT_FLAGS += --extra-packages com.tpv.freelyappstyle		
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.appcompat		
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.preference		
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.recyclerview
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.cardview
LOCAL_STATIC_JAVA_AAR_LIBRARIES:=FreelyStyle_FMRadio

include $(BUILD_PACKAGE)


include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES:=FreelyStyle_FMRadio:lib/freely-app-style.aar
LOCAL_MODULE_TAGS := optional 
include $(BUILD_MULTI_PREBUILT)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
