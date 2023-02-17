pipeline {
    agent any
    stages {
        stage('Declarative: Checkout SCM') {
            steps {
                checkout scm
            }
        }
        stage('Yi Qu - Build Docker Image') {
            steps {
                sh 'curl -fsSL https://get.docker.com -o get-docker.sh'
                sh 'sh get-docker.sh'
                sh 'docker build -t yiqu1/yiqu_app .'
            }
        }
        stage("Yi Qu - Login to Dockerhub"){
            steps {
                withCredentials([string(credentialsId: 'yiqu1', variable: 'dockerhubpwd')]) {
                    sh "docker login -u yiqu1 -p ${dockerhubpwd}"
                }
            }
        }
        stage("Yi Qu - Push image to Dockerhub"){
            steps {
                sh 'docker push yiqu1/yiqu_app'
            }
        }
    }
}
