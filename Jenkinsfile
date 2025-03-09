pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "mynginx:latest"
        CONTAINER_NAME = "mynginx-container"
        DOCKERFILE_DIR = "F:\\ProgSrc\\Jenkins\\jenkins-docker"
    }
    stages {
        stage('Build Docker Image') {
            steps {
                bat "docker build -t %DOCKER_IMAGE% %DOCKERFILE_DIR%"
            }
        }
        stage('Run Container') {
            steps {
                bat """
                docker stop %CONTAINER_NAME% || true
                docker rm %CONTAINER_NAME% || true
                docker run -d --name %CONTAINER_NAME% -p 8080:80 %DOCKER_IMAGE%
                """
            }
        }
    }
}
