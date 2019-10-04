#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/stronghands.png
ICON_DST=../../src/qt/res/icons/stronghands.ico
convert ${ICON_SRC} -resize 16x16 stronghands-16.png
convert ${ICON_SRC} -resize 32x32 stronghands-32.png
convert ${ICON_SRC} -resize 48x48 stronghands-48.png
convert stronghands-48.png stronghands-32.png stronghands-16.png ${ICON_DST}

