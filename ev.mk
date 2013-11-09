# Inherit from hammerhead device
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/gsm.mk)
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_hammerhead
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := lge
PRODUCT_MODEL := Nexus 5
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead TARGET_DEVICE=hammerhead BUILD_FINGERPRINT="lge/hammerhead/hammerhead:4.1.1/JRO03L/T999UVDLJA:user/release-keys" PRIVATE_BUILD_DESC="hammerhead-user 4.1.1 JRO03L T999UVDLJA release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := excrucior
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Google Nexus 5\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Hot reboot
# PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/ev/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/1080p/media/bootanimation.zip:system/media/bootanimation.zip
