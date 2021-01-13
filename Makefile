INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AllMailXS
AllMailXS_FILES = Tweak.xm
export ARCHS = arm64 arm64e
include $(THEOS_MAKE_PATH)/tweak.mk
