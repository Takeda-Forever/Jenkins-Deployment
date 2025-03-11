pipeline {
    agent any
    environment {
        REPO_URL = "https://github.com/Takeda-Forever/Jenkins-Deployment.git"
        BRANCH = "main"
        DOCKER_IMAGE = "myphp:latest"
        CONTAINER_NAME = "php-container"
    }
    stages {
        stage('Clone') {
            steps {
                git branch: "${BRANCH}", url: "${REPO_URL}"
            }
        }
        stage('Pipe-Check') {
            steps {
                bat 'init_check.bat'
            }
        }
        stage('System-Check') {
            steps {
                bat 'env_check.bat'
            }
        }
        stage('Build') {
            steps {
                bat 'build_docker.bat'
            }
        }
        stage('Run') {
            steps {
                bat 'run_docker.bat'
            }
        }
    }
}
