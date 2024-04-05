FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    autoconf automake \
    build-essential \
    pkg-config \
    yasm nasm \
    bear \
    libx264-dev \
    libx265-dev libnuma-dev \
    libvpx-dev \
    libfdk-aac-dev \
    libopus-dev


# gdb: debug
# clangd: code navigation, work with clangd vscode extension
RUN apt-get install -y \
    gdb \
    clangd

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Set the working directory
WORKDIR /app
COPY ./src /app/src

RUN mkdir -p /app/ffmpeg-build

### build {
# WORKDIR /src/ffmpeg-build

# make clean

# configure ffmpeg, prefix is current folder (/src/ffmpeg-build)
# ../ffmpeg/configure --prefix=. --enable-debug=3  --disable-optimizations --enable-libvpx --enable-libx264 --enable-libx265 --enable-nonfree --enable-gpl

# run 'make -j8', and generate compile_commands.json by bear to ffmpeg source folder
# bear --output ../ffmpeg/compile_commands.json -- make -j8
### } ## build

# Set the default command to run when the container starts
CMD ["/bin/bash"]
