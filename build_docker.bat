@echo off
echo [🏗] Начинаем стройку Docker-образа! Поднимаем краны...  
docker build -t %DOCKER_IMAGE% .  
echo [🎉] Стройка завершена! Образ готов к заселению!  
