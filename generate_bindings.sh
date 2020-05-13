JNI_INCLUDES="$JAVA_HOME/include/"
JNI_MD_INCLUDES="$JNI_INCLUDES/linux/"

# Default bindings
#bindgen --whitelist-function "ovr.*" --whitelist-function "vrapi.*" --whitelist-type "ovr.*" --whitelist-var "VRAPI.*" --rustified-enum "ovr.*" -o src/bindings.rs VrApi/wrapper.h -- -std=c99 -I/usr/include/clang/3.9/include -I$JNI_INCLUDES -I$JNI_MD_INCLUDES
bindgen --whitelist-function "vrapi.*" --whitelist-type "ovr.*" --whitelist-var "VRAPI.*" --rustified-enum "ovr.*" -o src/bindings.rs VrApi/wrapper.h -- -std=c99 -I/usr/include/clang/3.9/include -I$JNI_INCLUDES -I$JNI_MD_INCLUDES

# Android bindings
ANDROID_INCLUDES="$ANDROID_NDK/platforms/android-18/arch-arm/usr/include"
# bindgen --whitelist-function "ovr.*" --whitelist-function "vrapi.*" --whitelist-type "ovr.*" --whitelist-var "VRAPI.*" --rustified-enum "ovr.*" -o src/bindings_android.rs VrApi/wrapper.h -- -std=c99 -D__ANDROID__ -DANDROID -I$ANDROID_INCLUDES -I/usr/include/clang/3.9/include -I$JNI_INCLUDES -I$JNI_MD_INCLUDES
bindgen --whitelist-function "vrapi.*" --whitelist-type "ovr.*" --whitelist-var "VRAPI.*" --rustified-enum "ovr.*" -o src/bindings_android.rs VrApi/wrapper.h -- -std=c99 -D__ANDROID__ -DANDROID -I$ANDROID_INCLUDES -I/usr/include/clang/3.9/include -I$JNI_INCLUDES -I$JNI_MD_INCLUDES
