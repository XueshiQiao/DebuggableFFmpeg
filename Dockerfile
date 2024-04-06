FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    autoconf automake \
    build-essential \
    pkg-config \
    yasm nasm

RUN apt-get install -y \
    libx264-dev \
    libx265-dev libnuma-dev \
    libvpx-dev \
    libfdk-aac-dev \
    libopus-dev

# gdb: debug
# clangd: code navigation, work with clangd vscode extension
# bear: generate compile_commands.json for clangd
RUN apt-get install -y \
    gdb \
    clangd \
    bear

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Set the working directory
WORKDIR /app
COPY ./src /app/src

RUN mkdir -p /app/ffmpeg-build

# Set the default command to run when the container starts
CMD ["/bin/bash"]
