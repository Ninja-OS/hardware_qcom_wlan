# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices
ifneq ($(BOARD_IS_AUTOMOTIVE),true)
WLAN_PATH := $(call my-dir)

ifeq ($(WLAN_PATH),$(call project-path-for,wlan))

# TODO:  Fix this properly when b/37901207 is fixed
#ifneq ($(BOARD_IS_AUTOMOTIVE),true)
ifeq ($(filter bat,$(TARGET_DEVICE)),)
include $(call all-subdir-makefiles)
endif
endif
endif
