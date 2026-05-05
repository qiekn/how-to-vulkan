#!/usr/bin/env bash
set -e

# export CC=clang
# export CXX=clang++
# export CMAKE_GENERATOR=Ninja

BUILD_DIR="build"
EXE="./build/bin/HowToVulkan.exe"

if [ ! -f "$BUILD_DIR/CMakeCache.txt" ]; then
    cmake -B "$BUILD_DIR"
fi

cmake --build "$BUILD_DIR"

"$EXE"
