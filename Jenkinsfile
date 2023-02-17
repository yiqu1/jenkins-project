pipeline {
    agent any
    stages {
        stage("Yi Qu - Build Docker Image"){
	    steps {
		sh "sudo apt-get update"
		sh "sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release"
		sh "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg"
		sh "echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable' | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null"
		sh "sudo apt-get update"
		sh "sudo apt-get install -y docker-ce docker-ce-cli containerd.io"
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
