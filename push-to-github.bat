@echo off
rem Pushes this folder to https://github.com/subene-k/biennale-3d-map (run once; run again after later changes)
cd /d "%~dp0"
git --version >nul 2>&1 || (echo Git is not installed. Get it from https://git-scm.com/download/win and run this again. & pause & exit /b 1)
if not exist .git git init
git checkout -B main
git add -A
git commit -m "Biennale 3D maps: Purana Qila and Red Fort" -m "Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>" || echo Nothing new to commit.
git remote remove origin >nul 2>&1
git remote add origin https://github.com/subene-k/biennale-3d-map.git
git push -u origin main
echo.
echo Done. If a GitHub sign-in window opened, sign in as subene-k and the push continues.
pause
