target = iphone:clang:8.0:8.0
include theos/makefiles/common.mk

TWEAK_NAME = ABSABankingPermit
ABSABankingPermit_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Absa\ Banking"
