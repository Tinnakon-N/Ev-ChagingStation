@echo off
rem Switch to the script's directory (src/carcharge)
pushd "%~dp0"
rem Move up to src directory
cd ..
echo Compiling...
javac -encoding UTF-8 carcharge\*.java
if errorlevel 1 (
    echo Compilation Failed!
    pause
    exit /b 1
)
echo Running...
java -cp carcharge MainApp
popd
pause
