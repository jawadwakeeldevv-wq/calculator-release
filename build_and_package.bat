@echo off

REM Step 1: Compile modular calculator
if not exist build mkdir build
g++ src\main.cpp src\add.cpp src\sub.cpp src\mul.cpp src\divide.cpp -I include -o build\calculator.exe

REM Step 2: Prepare release directory
if exist release rmdir /s /q release
mkdir release

REM Step 3: Copy required files
copy build\calculator.exe release\
copy README.md release\
copy LICENSE release\
copy RELEASE_NOTES.md release\

REM Step 4: Create zip archive
powershell Compress-Archive -Path release\* -DestinationPath calculator-v1.0.0.zip

echo Build and packaging completed successfully!
pause
