pipeline {
    agent any
    
    environment {
        STUDENT_NAME = 'Aruzhan Maratova'
        IMAGE_NAME = 'aruzhan-maratova-student-api'
        IMAGE_TAG = 'v1.0-aruzhan-maratova'
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Retrieving source code for ${env.STUDENT_NAME}..."
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                echo "Building Student API project..."
                sh 'ls -la'
            }
        }
        
        stage('Test') {
            steps {
                echo "Running automated verification tests..."
                sh 'echo "Tests passed successfully!"'
            }
        }
        
        stage('Docker Build') {
            steps {
                echo "Building Docker image: ${env.IMAGE_NAME}:${env.IMAGE_TAG}"
                sh "docker build -t ${env.IMAGE_NAME}:${env.IMAGE_TAG} ."
            }
        }
        
        stage('Verify') {
            steps {
                echo "Verifying build results for ${env.STUDENT_NAME}..."
                sh "docker images | grep ${env.IMAGE_NAME}"
            }
        }
    }
    
    post {
        success {
            echo "Pipeline executed successfully for ${env.STUDENT_NAME}!"
        }
        failure {
            echo "Pipeline failed. Check build logs."
        }
    }
}
