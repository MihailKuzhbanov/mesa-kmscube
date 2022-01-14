SDKPATH = ~/linuxsdk-friendlyelec.face
APPNAME = kmscube

CC = $(SDKPATH)/buildroot/output/rockchip_rk3399/host/bin/aarch64-linux-gcc
CFLAGS = -o
PARAMS = -DHAVE_GST=true

PREFIX = /buildroot/output/rockchip_rk3399/host/aarch64-buildroot-linux-gnu/sysroot

INCLUDEPATH+=$(SDKPATH)$(PREFIX)/usr/include

INCLUDESTR = -I$(SDKPATH)/buildroot/output/rockchip_rk3399/host/include
INCLUDESTR += -I$(SDKPATH)/buildroot/output/rockchip_rk3399/host/lib/glib-2.0/include
INCLUDESTR += -I$(INCLUDEPATH)/libdrm
INCLUDESTR += -I$(INCLUDEPATH)/gstreamer-1.0
INCLUDESTR += -I$(INCLUDEPATH)/glib-2.0
INCLUDESTR += -I$(INCLUDEPATH)/glib-2.0/include

LIBS = -lgbm -ldrm -lm -ldl -lpthread -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0 -lEGL -lGLESv2 -lpng16 -lz -lgstapp-1.0 -lgstbase-1.0 -lgstallocators-1.0 -lgstvideo-1.0

all:
	$(CC) *.c $(CFLAGS) $(APPNAME) $(INCLUDESTR) $(PARAMS) $(LIBS)

clean:
	rm -f *.o $(APPNAME)
