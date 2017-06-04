#!/bin/bash

 cd ../../../..
 cd system/core
 patch -p1 < ../../device/acer/Z500/patches/system_core.patch
 cd ..
 cd bt
 patch -p1 < ../../device/acer/Z500/patches/system_bt.patch
 cd ..
 cd netd
 patch -p1 < ../../device/acer/Z500/patches/system_netd.patch
 cd ../..
 cd hardware/libhardware
 patch -p1 < ../../device/acer/Z500/patches/hardware_libhardware.patch
 cd ../..
 cd frameworks/av
 patch -p1 < ../../device/acer/Z500/patches/frameworks_av.patch
 cd ..
 cd base
 patch -p1 < ../../device/acer/Z500/patches/frameworks_base.patch
 cd ..
 cd native
 patch -p1 < ../../device/acer/Z500/patches/frameworks_native.patch
 cd ..
 cd opt/telephony
 patch -p1 < ../../../device/acer/Z500/patches/frameworks_opt_telephony.patch
 cd ../../..
 cd external/sepolicy
 patch -p1 < ../../device/acer/Z500/patches/external_sepolicy.patch
 cd ../..
 echo Successfuly patched! Go ahead and start building!
