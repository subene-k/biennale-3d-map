@echo off
rem Publishes the project folder to GitHub (https://isotoxal-karma.stratagile.com/).
rem Always: save your changes, take in the admin page's changes from GitHub, then push.
cd /d "%~dp0"
set "MSG=%*"
if "%MSG%"=="" set /p "MSG=Short note about this change (Enter for 'Update'): "
if "%MSG%"=="" set "MSG=Update"

git add -A
git diff --cached --quiet || git commit -m "%MSG%"

echo.
echo Getting the latest changes from GitHub (admin page edits)...
git pull --rebase origin main
if errorlevel 1 (
  echo.
  echo *** The pull stopped because the same file was changed here and in the admin page.
  echo *** Nothing was pushed. Copy this window's text to Claude, or run:  git rebase --abort
  pause
  exit /b 1
)

echo.
echo Publishing...
git push origin main
if errorlevel 1 (
  echo.
  echo *** Push failed. Copy this window's text to Claude.
  pause
  exit /b 1
)
echo.
echo Done. The live map updates in about a minute (reload with Ctrl+F5).
pause
