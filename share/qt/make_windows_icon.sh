#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/Stronghands.png
ICON_DST=../../src/qt/res/icons/Stronghands.ico
convert ${ICON_SRC} -resize 16x16 Stronghands-16.png
convert ${ICON_SRC} -resize 32x32 Stronghands-32.png
convert ${ICON_SRC} -resize 48x48 Stronghands-48.png
convert Stronghands-48.png Stronghands-32.png Stronghands-16.png ${ICON_DST}

