#!/bin/bash

# Step 1: Compile modular calculator
mkdir -p build
g++ src/main.cpp src/add.cpp src/sub.cpp src/mul.cpp src/divide.cpp -I include -o build/calculator

# Step 2: Prepare release directory
rm -rf release
mkdir -p release

# Step 3: Copy required files
cp build/calculator release/
cp README.md release/
cp LICENSE release/
cp RELEASE_NOTES.md release/

# Step 4: Create compressed archive
tar -czf calculator-v1.0.0.tar.gz release/

echo "Build and packaging completed successfully!"
