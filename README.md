## TWRP device tree for Acer Liquid Z500 (acer_Z500)

Add to `.repo/local_manifests/acer_Z500.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/acer/acer_Z500" name="android_device_acer_acer_Z500" remote="hejsekvojtech" revision="android-5.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_acer_Z500-eng
make -j5 recoveryimage
```
Kernel source is available at: https://github.com/hejsekvojtech/android_kernel_mediatek_lr55
