pipeline {
    agent any
    stages {
        stage('Yi Qu - Build Docker Image') {
            steps {
    sh 'curl -fsSL https://get.docker.com -o get-docker.sh'
    sh 'sudo sh get-docker.sh'
    sh 'sudo usermod -aG docker jenkins'
    sh 'sudo systemctl restart docker'
    sh 'docker build -t yi-qu-app .'
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
