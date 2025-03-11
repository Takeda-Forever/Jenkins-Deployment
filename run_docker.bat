@echo off
echo Остановка контейнера...
docker stop %CONTAINER_NAME%
IF ERRORLEVEL 1 echo Контейнер не найден, пропускаем остановку.

echo Удаление контейнера...
docker rm %CONTAINER_NAME%
IF ERRORLEVEL 1 echo Контейнер не найден, пропускаем удаление.

echo Запуск нового контейнера...
docker run -d --name %CONTAINER_NAME% -p %INTERNAL%:%EXPOSE% %DOCKER_IMAGE%

echo Контейнер успешно запущен!
docker ps -f name=%CONTAINER_NAME%
