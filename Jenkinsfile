pipeline {
	agent any
	stages {
	stage("Yi Qu - Build Docker Image"){
		steps {
		sh "docker build -t yiquimage/yiqu ."
		}
	}
    stage("Yi Qu - Login to Dockerhub"){
		steps {
		withCredentials([string(credentialsId: 'docker-hub', variable: 'dockerhubpwd')]) {
			sh "docker Login -u yiqu11 -p ${dockerhubpwd}"
			sh "echo login successful"
		}
		}
	}
    stage("Yi Qu - Push Image to Dockerhub"){
		steps {
		sh "echo hello from jenkins pipeline"
		// sh export PATH="/c/Users/harsi/AppData/Local/Programs/Python/Python310/python"

		sh "python3 --version"
		sh "python3 ppfile.py"
    sh 'docker push yiqu_app'
		}
	}

}
}