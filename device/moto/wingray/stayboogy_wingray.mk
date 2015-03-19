# Moto Xoom Wingray Stayboogy style

PRODUCT_PROPERTY_OVERRIDES += \
        ro.carrier=wifi-only

PRODUCT_PROPERTY_OVERRIDES := \
    ro.com.android.dateformat=MM-dd-yyyy

PRODUCT_LOCALES := en_US

PRODUCT_PACKAGES := \
    libfwdlockengine \
    WAPPushManager

PRODUCT_PACKAGES := \
	HoloSpiralWallpaper \
	LiveWallpapersPicker \
	VisualizationWallpapers

PRODUCT_PROPERTY_OVERRIDES += \
        ro.carrier=wifi-only

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, device/moto/wingray/device.mk)

$(call inherit-product, vendor/stayboogy/stayboogy-wingray.mk)

$(call inherit-product, vendor/moto/wingray/wingray-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wingray
PRODUCT_NAME := stayboogy_wingray
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tervigon BUILD_FINGERPRINT="motorola/tervigon/wingray:4.1.2/JZO54K/485486:user/release-keys" PRIVATE_BUILD_DESC="tervigon-user 4.1.2 JZO54K 485486 release-keys"




