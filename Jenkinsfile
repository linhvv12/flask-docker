pipeline { 

    environment { 

        registry = "linhvv2/flask-docker" 

        registryCredential = 'Dockerhub' 

        dockerImage = '' 

    }

    agent any 

    stages { 

        stage('Cloning Git') { 

            steps { 

                git 'https://github.com/linhvv12/flask-docker.git' 

            }

        } 

        stage('Building') { 

            steps { 

                script { 

                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 

                }

            } 

        }

        stage('Deploy') { 

            steps { 

                script { 

                    docker.withRegistry( '', registryCredential ) { 

                        dockerImage.push() 

                    }

                } 

            }

        } 

        stage('Cleaning up') { 

            steps { 

                sh "docker rmi $registry:$BUILD_NUMBER" 

            }

        } 

    }

}