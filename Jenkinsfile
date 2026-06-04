pipeline {

    agent any

    tools {
        jdk 'JDK25'
        maven 'Maven-3'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/kkundantech/jenkins-cicd-project.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t jenkins-cicd-project:v1 .'
            }
        }

        stage('Docker Run') {
            steps {
                bat 'docker run --name cicd-container jenkins-cicd-project:v1'
            }
        }
    }
}