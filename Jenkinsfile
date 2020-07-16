pipeline {
    agent any
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
    }
}