docker stop ${CONTAINER_NAME} || exit 0
docker rm ${CONTAINER_NAME} || exit 0
docker run -d --name ${CONTAINER_NAME} -p 8080:80 ${DOCKER_IMAGE}
