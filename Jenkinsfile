pipeline {
    agent any
    environment {
    registry = "phalligan/capstone-test
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
            script {
                 docker.build registry + ":$version.$BUILD_NUMBER"
            }
        }
    }
}