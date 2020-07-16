pipeline {
    agent {
        docker {
            image 'python:3.7-stretch'
        }
    }
    stages {
        stage('setup'){
            steps {
                make install
            }
        }
        stage('build') {
            steps {
                make lint
            }
        }
    }
}