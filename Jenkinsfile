pipeline {

  agent none
    environment {
      DOCKER_IMAGE = "linhvv2/flask-docker"
  }
  stages{
    stage('test'){
     agent {
          docker {
            image 'ubuntu:latest'
        
          }
      }
    }
  

    stage('build') {
      steps {
        agent { node {label 'master'}}
         withCredentials([usernamePassword(credentialsId: 'Docker-hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
            sh 'echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin'
            sh "docker build -t ${DOCKER_IMAGE}"
            sh "docker push ${DOCKER_IMAGE}:latest"
        }

        //clean to save disk
        sh "docker image rm ${DOCKER_IMAGE}"
        sh "docker image rm ${DOCKER_IMAGE}:latest"
    
      
  
        
      }
    }
  }
}
