pipeline {

  agent any
  stage{
    stage('clone stage'){
      steps{
        git credentialsId: 'linhvv12', url: 'https://github.com/linhvv12/flask-docker.git'
      }
    }
  

    stage("build") {
      steps {
        withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') 
          sh 'docker build -t  linhvv2/flask-docker:v10'
          sh 'docker push  linhvv2/flask-docker:v10'
        
      }
    }
  }
}
