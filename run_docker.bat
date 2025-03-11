@echo off
echo ==============================================
echo 🚀  Запуск контейнера %CONTAINER_NAME%! 🚀
echo ==============================================

echo 🔴 Остановка предыдущего контейнера...
docker stop %CONTAINER_NAME%
IF ERRORLEVEL 1 echo ⚠ Контейнер не найден, пропускаем остановку.

echo 🗑  Удаление предыдущего контейнера...
docker rm %CONTAINER_NAME%
IF ERRORLEVEL 1 echo ⚠ Контейнер не найден, пропускаем удаление.

echo 🏗  Старт нового контейнера...
docker run -d --name %CONTAINER_NAME% -p %INTERNAL%:%EXPOSE% %DOCKER_IMAGE%

echo ✅ Контейнер успешно запущен! 🚀
echo ==============================================
echo 🌐 Контейнер доступен по адресу: http://%COMPUTERNAME%:%INTERNAL%
echo ==============================================
docker ps -f name=%CONTAINER_NAME%
