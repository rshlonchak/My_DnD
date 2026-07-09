@echo off
cd /d "%~dp0"

git add .

git diff --cached --quiet
if %errorlevel%==0 (
    echo Немає нових змін.
    pause
    exit /b
)

git commit -m "Нові зміни"
git push

pause
