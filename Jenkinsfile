pipeline {
    agent any
    environment {
    registry = "https://872354405661.dkr.ecr.us-west-2.amazonaws.com"
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
                script {
                    docker.withRegistry("${env.registry}", "ecr:us-west-2:aws-jenkins-role") {
                    
                        //build image
                        def customImage = docker.build("capstone-project:${env.version}.${BUILD_NUMBER}")

                        //push image
                        customImage.push()

                    }
                }
            }
        }

    }
}