TARGET      := sdk-testsuites
HDR_REFS    := src

LDFLAGS     += -liot_sdk -liot_platform

ifeq (y,$(strip $(FEATURE_MQTT_ID2_AUTH)))
LDFLAGS     += -ltfs -lmbedcrypto
endif
