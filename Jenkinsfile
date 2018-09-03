pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'python -V'
                sh 'python3 -V'
                sh 'python3 app_test.py'
            }
        }
    }
}
