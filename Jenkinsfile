pipeline {
    agent { dockerfile true }
    stages {
        stage('Check') {
            steps {
                sh 'python3 -V'
                sh 'black --check .'
                sh 'find -name "*.py" | xargs -I {} isort -c {}'
                sh 'find -name "*.py" | xargs -I {} mypy {}'
            }
        }
        stage('Test') {
            steps {
                sh 'python3 app_test.py'
            }
        }
    }
}
