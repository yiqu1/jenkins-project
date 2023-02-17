pipeline {
    agent any
    stages {
        stage('Yi Qu - Build Docker Image') {
            steps {
                sh "docker --version"
                sh "docker build -t yiqu11/yiqu:latest ."
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
                sh 'docker push yiqu11/yiqu'
            }
        }
    }
}
