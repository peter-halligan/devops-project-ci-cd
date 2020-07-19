pipeline {
    agent any
    environment {
    registry = "872354405661.dkr.ecr.us-west-2.amazonaws.com/capstone-project"
    version = "0.0.0"
    }
    stages {
        stage('setup'){
            steps {
                sh "make setup"
                sh "source ~/.devops/bin/activate && make install"
            }
        }
        stage('lint') {
            steps {
                sh "source ~/.devops/bin/activate && make lint"
            }
        }
        stage('build') {
            steps {
                docker.withRegistry("${env.registry}", "ecr:us-west-2:aws-jenkins-role") {
          
                    //build image
                    def customImage = docker.build("${env.registry}:${env.version}.${BUILD_NUMBER}")

                    //push image
                    customImage.push()

                }

            }
        }

    }
}