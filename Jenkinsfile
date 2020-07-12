pipeline {
    agent {
        docker {
            image 'python3.7.3-stretch
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