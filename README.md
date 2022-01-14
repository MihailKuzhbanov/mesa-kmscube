Original repo is available at https://gitlab.freedesktop.org/mesa/kmscube/

KMS-cube without meson autotools.
Cut some features.
Works with rockchip linuxSDK (buildroot).
Tested on Rockchip RK3399.
May request GBM wrapper (libmali.so with gbm symbols).

## GBM wrapper build
```
git clone https://github.com/heiher/libmali-rk3399
cd libmali-rk3399
make
```

copy lib/libgbm.so.1.0.0 to /usr/lib/libgbm.so.1.0.0 on device

## Build cube
```
make SDKPATH=path/to/linuxsdk-friendlyelec.face
```

## Run cube
```
./kmscube
```

Make sure that no X servers are running, this may cause "Permission denied" error at start kmscube app.
