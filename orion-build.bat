@echo off
setlocal
set "VSDEV=C:\Program Files (x86)\Microsoft Visual Studio\18\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
set "CMAKE=C:\Program Files (x86)\Microsoft Visual Studio\18\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"
set "BUILD=C:\Users\danie\Documents\development\Csharp\netcoredbg\build-hotreload"
call "%VSDEV%"
if errorlevel 1 exit /b 1
"%CMAKE%" --build "%BUILD%" --config Release --target install --parallel
exit /b %errorlevel%
