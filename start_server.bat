@echo off
title Menjalankan Server Projek Tangan 3D
echo ========================================================
echo   MENJALANKAN LOCAL SERVER UNTUK PROJEK TANGAN 3D
echo ========================================================
echo.
echo Membuka browser pada http://localhost:8000/tngn.html ...
echo.

where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    start http://localhost:8000/tngn.html
    python -m http.server 8000
    goto end
)

where py >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    start http://localhost:8000/tngn.html
    py -m http.server 8000
    goto end
)

where node >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    start http://localhost:8000/tngn.html
    npx -y serve -p 8000 .
    goto end
)

echo Python atau Node.js tidak ditemukan di PATH.
echo Membuka langsung tngn.html di browser...
start tngn.html

:end
pause
