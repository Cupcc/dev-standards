@REM 这是npm代理bat脚本
@echo off
setlocal

set REGISTRY=http://192.168.6.128:4873

where npm >nul 2>nul
if errorlevel 1 (
    echo npm is not installed.
    exit /b 1
)

echo Setting user npm registry to %REGISTRY%
npm config set registry %REGISTRY%
if errorlevel 1 (
    echo Failed to set npm registry.
    exit /b 1
)

echo.
echo Current registry:
npm config get registry

echo.
echo Testing connectivity:
npm ping --registry %REGISTRY%

echo.
echo Done.
endlocal
pause