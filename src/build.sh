#!/bin/bash

cd /app/ffmpeg-build

make clean

# configure ffmpeg, prefix is current folder (/app/src/ffmpeg-build)
/app/src/ffmpeg/configure --prefix=. --enable-debug=3  --disable-optimizations --enable-libvpx --enable-libx264 --enable-libx265 --enable-nonfree --enable-gpl

# run 'make -j8', and generate compile_commands.json by bear to ffmpeg source folder
bear --output /app/src/ffmpeg/compile_commands.json -- make -j8
