LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := game_shared

LOCAL_MODULE_FILENAME := libgame

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   AppDelegate.cpp \
                   HelloWorldScene.cpp \
                   GameOverScene.cpp
                   
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/../Classes                   

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static cocosdenshion_static
            
include $(BUILD_SHARED_LIBRARY)
#add two paths below
$(call import-add-path, /cygdrive/d/cocos2d-x-2.2.2)
$(call import-add-path, /cygdrive/d/cocos2d-x-2.2.2/cocos2dx/platform/third_party/android/prebuilt)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)
