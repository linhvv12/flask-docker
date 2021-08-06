pipeline {

  agent any
  stages{
    stage('clone stage'){
      steps{
        git url: "https://github.com/linhvv12/flask-docker.git", credentialsId: '4314af2e-edd9-476b-a025-bcb03ff94345', branch: 'master'
                sh 'echo $PWD'
                sh 'ls -lh
      }
    }
  

    stage('build') {
      steps {
        withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') 
          sh 'docker build -t  linhvv2/flask-docker:v10'
          sh 'docker push  linhvv2/flask-docker:v10'
        
      }
    }
  }
}
