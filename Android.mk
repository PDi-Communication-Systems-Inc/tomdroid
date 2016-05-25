LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under)
LOCAL_PACKAGE_NAME := org.tomdroid
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform

# List of static libraries to include in the package
LOCAL_JAVA_LIBRARIES := signpost-commons-http \
                        signpost-core \
		        diffutils \
			android.test.runner

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)

LOCAL_STATIC_JAVA_LIBRARIES := signpost-commons-http:libs/signpost-commonshttp4-1.2.1.2.jar \
                               signpost-core:libs/signpost-core-1.2.1.2.jar \
                               diffutils:libs/diffutils-1.2.1.jar

include $(BUILD_MULTI_PREBUILT)
