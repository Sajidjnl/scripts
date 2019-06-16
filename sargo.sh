#!/usr/bin/env bash

cd $HOME/bootleg
rm -rf hardware/qcom/audio

git clone https://github.com/stebomurkn420/device_google_sargo device/google/sargo
git clone https://github.com/stebomurkn420/device_google_bonito device/google/bonito
git clone https://github.com/stebomurkn420/device_google_bonito-sepolicy device/google/bonito-sepolicy
git clone https://github.com/obsd39/proprietary_vendor_google vendor/google
git clone https://github.com/DirtyUnicorns/android_kernel_google_bonito kernel/google/bonito
git clone https://github.com/LineageOS/android_hardware_qcom_audio hardware/qcom/audio
git clone https://github.com/DirtyUnicorns/android_hardware_google_pixel hardware/google/pixel
git clone https://gitlab.com/stebomurkn420/vendor_gapps.git vendor/gapps
git clone https://android.googlesource.com/platform/hardware/qcom/sdm710/display -b android-9.0.0_r39 hardware/qcom/sdm710/display
git clone https://android.googlesource.com/platform/hardware/qcom/sdm710/gps -b android-9.0.0_r39 hardware/qcom/sdm710/gps
git clone https://android.googlesource.com/platform/hardware/qcom/sdm710/media -b android-9.0.0_r39 hardware/qcom/sdm710/media
git clone https://android.googlesource.com/platform/hardware/qcom/sdm710/thermal -b android-9.0.0_r39 hardware/qcom/sdm710/thermal
git clone https://android.googlesource.com/platform/hardware/qcom/sdm710/vr -b android-9.0.0_r39 hardware/qcom/sdm710/vr
git clone https://github.com/stebomurkn420/hardware_qcom_sdm710_data_ipacfg-mgr hardware/qcom/sdm710/data/ipacfg-mgr

. build/envsetup.sh
lunch bootleg_sargo-userdebug
make bacon -j16 |& tee /tmp/build.log
