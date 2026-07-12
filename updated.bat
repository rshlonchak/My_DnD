@echo off
cd /d "%~dp0"

echo ==========================
echo Updating repository...
echo ==========================
echo.

git pull --rebase

if errorlevel 1 (
    echo.
    echo Update failed.
    echo Resolve any conflicts and try again.
)

echo.
pause