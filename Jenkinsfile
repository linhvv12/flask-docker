pipeline {

  agent any

 
    stage("Test") {
          docker {
            image 'ubuntu:latest'
          }
      
      }
    

    stage("build") {
    
      steps {
        withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') 
          sh 'docker build -t  linhvv2/flask-docker:v10'
          sh 'docker push  linhvv2/flask-docker:v10'
        
      }
    }
  

  post {
    success {
      echo "SUCCESSFUL"
    }
    failure {
      echo "FAILED"
    }
  }
}
