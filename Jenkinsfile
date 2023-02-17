pipeline {
    agent any
    stages {
        stage('Yi Qu - Build Docker Image') {
            steps {
                sh "docler --version"
                sh "docker build -t yiqu11/yiqu ."
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
                sh 'docker push yiqu11/yiqu_app'
                sh "python3 --version"
		            sh "python3 yiqu.py"
            }
        }
    }
}
