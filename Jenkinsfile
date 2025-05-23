pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/AditiAjitSalvi/DevopsMiniProject.git'
        LOCAL_DIR = 'd:\\DevopsMiniProject'  // Adjust path as needed
        IMAGE_NAME = 'htmlsite:latest'
        CONTAINER_NAME = 'html_container'
        WSL_ANSIBLE_SCRIPT = '/mnt/d/htmlProject/deploy.yml'  // Adjust for your WSL path
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

        stage('Deploy with Ansible on WSL') {
      steps {
        bat 'wsl -u ubuntuuser ansible-playbook /mnt/d/htmlProject/deploy.yml'
      }
    }
        }
    }
}
