pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'lsb_release -a'
                sh 'python3 -V'
                sh 'python3 app_test.py'
            }
        }
    }
}
