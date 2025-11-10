#!/bin/bash

deviceDir=$(gettop)/device/xiaomi/emerald

${deviceDir}/applypatch.sh ${deviceDir}/patches

echo "Cleaning Dummy Stuffs"
rm -rf hardware/mediatek
rm -rf hardware/xiaomi
rm -rf device/mediatek/sepolicy_vndr

echo "Cloning Stuffs For Emeralds"

git clone https://github.com/xiaomi-emerald/android_hardware_mediatek.git -b lineage-23.0 hardware/mediatek
git clone https://github.com/xiaomi-emerald/android_hardware_xiaomi.git -b lineage-23.0 hardware/xiaomi
git clone https://github.com/xaveroprjkt/vendor_xiaomi_emerald.git vendor/xiaomi/emerald
git clone https://github.com/xaveroprjkt/device_xiaomi_emerald-kernel.git -b lineage-22.2-mahiru device/xiaomi/emerald-kernel
