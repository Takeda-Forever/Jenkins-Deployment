@echo off
echo ===== System Environment Check =====
echo.
echo Docker Version:
docker --version
echo.
echo Git Version:
git --version
echo.
echo Java Version:
java -version
echo.
echo System Info:
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
echo ===================================
