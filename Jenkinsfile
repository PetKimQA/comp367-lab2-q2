pipeline {
    agent any
    tools {
        maven "MAVEN3"
    }
    environment {
        DOCKERHUB_PWD = credentials('CredentialID_DockerHubPWD')
    }
    stages {
        stage("Check out") {
            steps {
                git branch: 'main', url: 'https://github.com/PetKimQA/comp367-lab2-q2'
            }
        }
        stage("Build maven project") {
            steps {
                sh 'mvn clean install'
            }
        }
        stage("Docker build") {
            steps {
                script {
                    sh 'docker build -t taesukk/comp367-webapp:1.0 .'
                }
            }
        }
        stage("Docker login") {
            steps {
                script {
                    sh 'docker login -u taesukk -p ${DOCKERHUB_PWD}'
                }
            }
        }
        stage("Docker push") {
            steps {
                script {
                    sh 'docker push taesukk/comp367-webapp:1.0'
                }
            }
        }
    }
}
