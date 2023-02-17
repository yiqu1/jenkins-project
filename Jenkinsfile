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
                sh 'docker build -t yiqu11/yiqu_app .'
            }
        }
        stage("Yi Qu - Login to Dockerhub"){
            steps {
                withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
    // some block
		            sh 'docker login -u yiqu11 -p ${dockerhubpwd}'
}
            }
        }
        stage("Yi Qu - Push image to Dockerhub"){
            steps {
                sh 'docker push yiqu_app'
            }
        }
    }
}
