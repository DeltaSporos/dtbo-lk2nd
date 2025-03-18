#!/bin/sh
set -e
# https://learn.adafruit.com/introduction-to-the-beaglebone-black-device-tree/compiling-an-overlay

# Xiaomi Redmi 7/7A
dtc -O dtb -o sdm632-xiaomi-onclite.dtbo -b 0 -@ sdm632-xiaomi-onclite.dts
mkdtboimg cfg_create dtbo-xiaomi-onclite.img dtboimg-xiaomi-onclite.cfg
dtc -O dtb -o sdm439-xiaomi-pine.dtbo -b 0 -@ sdm439-xiaomi-pine.dts
mkdtboimg cfg_create dtbo-xiaomi-pine.img dtboimg-xiaomi-pine.cfg

# CAT S22 Flip
dtc -O dtb -o qm215-cat-s22flip.dtbo -b 0 -@ qm215-cat-s22flip.dts
mkdtboimg cfg_create dtbo-cat-s22flip.img dtboimg-cat-s22flip.cfg
