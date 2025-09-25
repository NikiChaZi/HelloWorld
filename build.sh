#!/bin/bash
set -e

echo "🔄 Updating project from Git..."
git pull origin main || echo "⚠️ Не удалось обновить, продолжаем со старыми файлами"

echo "🛠️ Building project..."
mkdir -p build
cd build
cmake ..
make

echo "✅ Build complete. Run program with: ./HelloWorld"

