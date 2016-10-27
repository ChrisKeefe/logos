#!/usr/bin/env bash

ZIP=qiime2_logos_v5

rm -rf raster && mkdir -p raster/apple_iconset.iconset

svgexport vector/qiime2-square.svg raster/qiime2-square-400.png
svgexport vector/qiime2-square.svg raster/qiime2-square-200.png 200:
svgexport vector/qiime2-square.svg raster/qiime2-square-100.png 100:
svgexport vector/qiime2-square.svg raster/qiime2-square-600.png 600:
svgexport vector/qiime2-square.svg raster/qiime2-square-800.png 800:
svgexport vector/qiime2-square.svg raster/qiime2-square-1000.png 1000:

convert raster/qiime2-square-100.png raster/qiime2-square-100.tiff
convert raster/qiime2-square-200.png raster/qiime2-square-200.tiff
convert raster/qiime2-square-400.png raster/qiime2-square-400.tiff
convert raster/qiime2-square-600.png raster/qiime2-square-600.tiff
convert raster/qiime2-square-800.png raster/qiime2-square-800.tiff
convert raster/qiime2-square-1000.png raster/qiime2-square-1000.tiff

svgexport vector/qiime2-square.svg raster/apple_iconset.iconset/icon_16x16.png 16:
svgexport vector/qiime2-square.svg raster/apple_iconset.iconset/icon_32x32.png 32:
svgexport vector/qiime2-square.svg raster/apple_iconset.iconset/icon_128x128.png 128:
svgexport vector/qiime2-square.svg raster/apple_iconset.iconset/icon_256x256.png 256:
svgexport vector/qiime2-square.svg raster/apple_iconset.iconset/icon_512x512.png 512:

cp raster/apple_iconset.iconset/icon_16x16.png raster/apple_iconset.iconset/icon_16x16@2x.png
cp raster/apple_iconset.iconset/icon_32x32.png raster/apple_iconset.iconset/icon_32x32@2x.png
cp raster/apple_iconset.iconset/icon_128x128.png raster/apple_iconset.iconset/icon_128x128@2x.png
cp raster/apple_iconset.iconset/icon_256x256.png raster/apple_iconset.iconset/icon_256x256@2x.png
cp raster/apple_iconset.iconset/icon_512x512.png raster/apple_iconset.iconset/icon_512x512@2x.png

svgexport vector/qiime2.svg raster/qiime2-rect-400.png
svgexport vector/qiime2.svg raster/qiime2-rect-200.png 200:
svgexport vector/qiime2.svg raster/qiime2-rect-100.png 100:
svgexport vector/qiime2.svg raster/qiime2-rect-600.png 600:
svgexport vector/qiime2.svg raster/qiime2-rect-800.png 800:
svgexport vector/qiime2.svg raster/qiime2-rect-1000.png 1000:

convert raster/qiime2-rect-100.png raster/qiime2-rect-100.tiff
convert raster/qiime2-rect-200.png raster/qiime2-rect-200.tiff
convert raster/qiime2-rect-400.png raster/qiime2-rect-400.tiff
convert raster/qiime2-rect-600.png raster/qiime2-rect-600.tiff
convert raster/qiime2-rect-800.png raster/qiime2-rect-800.tiff
convert raster/qiime2-rect-1000.png raster/qiime2-rect-1000.tiff

svgexport vector/qiime2-favicon.svg raster/qiime2-favicon-256.png
convert raster/qiime2-favicon-256.png -resize 16x16 raster/qiime2-favicon-16.png
convert raster/qiime2-favicon-256.png -resize 32x32 raster/qiime2-favicon-32.png
convert raster/qiime2-favicon-256.png -resize 64x64 raster/qiime2-favicon-64.png
convert raster/qiime2-favicon-256.png -resize 128x128 raster/qiime2-favicon-128.png
convert raster/qiime2-favicon-16.png raster/qiime2-favicon-32.png raster/qiime2-favicon-64.png \
    raster/qiime2-favicon-128.png raster/qiime20-favicon-256.png -colors 256 raster/favicon.ico

rm -rf $ZIP && mkdir $ZIP
cp raster/*.{png,tiff} $ZIP
cp vector/*.svg $ZIP
zip -r bundles/$ZIP.zip $ZIP
rm -rf $ZIP
