#!/bin/bash

# === 1. Обновляем исходники из Git ===
echo "Updating project from Git..."
git pull origin main
if [ $? -ne 0 ]; then
    echo "Git pull failed"
    exit 1
fi

# === 2. Создаём папку сборки ===
echo "Creating build folder..."
mkdir -p build
cd build || exit

# === 3. Генерируем сборку с CMake ===
echo "Configuring project with CMake..."
cmake ..
if [ $? -ne 0 ]; then
    echo "CMake configuration failed"
    exit 1
fi

# === 4. Компилируем проект ===
echo "Building project..."
make
if [ $? -ne 0 ]; then
    echo "Build failed"
    exit 1
fi

cd ..

echo "Build finished successfully!"
echo "Run your program with: ./build/HelloWorld"
