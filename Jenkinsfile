pipeline {
    agent any
    environment {
        REPO_URL = "https://github.com/Takeda-Forever/Jenkins-Deployment.git"
        BRANCH = "main"
        DOCKER_IMAGE = "mynginx:latest"
        CONTAINER_NAME = "mynginx-container"
    }
    stages {
        stage('Clone Repository') {
            steps {
                git branch: "${BRANCH}", url: "${REPO_URL}"
            }
        }
        stage('Init Check') {
            steps {
                bat 'init_check.bat'
            }
        }
        stage('System Check') {
            steps {
                bat 'env_check.bat'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat "docker build -t ${DOCKER_IMAGE} ."
            }
        }
        stage('Run Container') {
            steps {
                script {
                    bat """
                    docker stop ${CONTAINER_NAME} || exit 0
                    docker rm ${CONTAINER_NAME} || exit 0
                    docker run -d --name ${CONTAINER_NAME} -p 8080:80 ${DOCKER_IMAGE}
                    """
                }
            }
        }
    }
}
