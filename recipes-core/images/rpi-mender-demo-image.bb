# Base this image on rpi-basic-image
include recipes-core/images/rpi-basic-image.bb

IMAGE_INSTALL += " \
    wpa-supplicant \
    iw \
    linux-firmware-ralink \
    kernel-image \
    kernel-devicetree \
"
