#!/bin/bash
set -e
git pull origin main || true
rm -rf build
mkdir build
cd build
cmake ..
make

