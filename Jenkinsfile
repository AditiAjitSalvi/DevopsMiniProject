pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/AditiAjitSalvi/DevopsMiniProject.git'
        LOCAL_DIR = 'd:\\DevopsMiniProject'
        IMAGE_NAME = 'htmlsite:latest'
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

       
    }
}
