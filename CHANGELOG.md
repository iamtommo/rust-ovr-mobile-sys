# Changelog

## [0.5.0] - 2020-05-13
- forked ovr-mobile-sys & updated to mobile sdk 1.26.0 (GearVR final support)
- changed generate_bindings.sh around so bindgen can find jni.h and jni_md.h
- removed --whitelist-function "ovr.* params from bindgen which were causing errors for 'unused'
- hacked helpers.rs where ovrPosef was used cos bindgen having issues with inline untagged union