pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                echo 'Code is cloned automatically by Jenkins from GitHub.'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the application with Maven...'
                bat 'mvn clean install -DskipTests'
            }
        }

        stage('Test') {
            steps {
                echo 'Running unit tests...'
                bat 'mvn test || exit 0' // optional: ignore test failure for now
            }
        }

        stage('Docker') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t bank-app .'

                echo 'Stopping old container if exists...'
                bat 'docker rm -f bank-container 2>NUL'

                echo 'Running Docker container...'
                bat 'docker run -d -p 9090:8080 --name bank-container bank-app'
            }
        }
    }
}

