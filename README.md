## TWRP device tree for LG G6 (International H870)

Add to `.repo/local_manifests/h870.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/lge/h870" name="android_device_lge_h870" remote="TeamWin" revision="android-6.0" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_h870-eng
make -j5 recoveryimage
```

Kernel sources are available at: https://github.com/jcadduono/android_kernel_lge_msm8996/tree/twrp-7.0

# NOT RLY WORKING IT JUST BOOTS AND YOU WILL NEED THE EXPLOIT AND A CUSTOM BOOTCHAIN LOADER I WONT SHARE HERE ELSE IT GETS PATCHED BY APPLE TOO SOON ;)
