pipeline {
    agent any
    stages {
        stage("Yi Qu - Build Docker Image"){
	    steps {
		sh 'apt-get update'
    sh "apt-get -y install docker.io"
    sh 'docker build -t yiqu_app .'
		sh "docker build -t yiqu_app ."
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
