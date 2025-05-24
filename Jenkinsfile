pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/AditiAjitSalvi/DevopsMiniProject.git'
        LOCAL_DIR = 'd:\\DevopsMiniProject'
        IMAGE_NAME = 'htmlsite:latest'  // You can rename to 'htmlsite:latest' if you want
        CONTAINER_NAME = 'html_container'
        WSL_ANSIBLE_SCRIPT = '/mnt/d/DevopsMiniProject/devopsdeploy.yml'
        WSL_USER = 'aditi'  // Replace with your actual WSL username
    }

    stages {
        stage('Clone Repository') {
            steps {
                git "${GIT_REPO}"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat "cd /d %LOCAL_DIR% && docker build -t %IMAGE_NAME% ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    bat """
                    docker stop %CONTAINER_NAME% || exit 0
                    docker rm %CONTAINER_NAME% || exit 0
                    docker run -d -p 8080:80 --name %CONTAINER_NAME% %IMAGE_NAME%
                    docker ps
                    """
                }
            }
        }
    }
}
