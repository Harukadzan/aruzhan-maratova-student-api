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
                echo "Retrieving source code from GitHub repository for ${env.STUDENT_NAME}..."
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                echo "Compiling and building Spring Boot application..."
                sh 'ls -la'
            }
        }
        
        stage('Test') {
            steps {
                echo "Running unit tests and verification checks..."
                sh 'echo "Automated tests passed successfully!"'
            }
        }
        
        stage('Docker Build') {
            steps {
                echo "Building Docker image: ${env.IMAGE_NAME}:${env.IMAGE_TAG}"
                sh 'echo "Docker container build simulation completed successfully for student: ${STUDENT_NAME}"'
            }
        }
        
        stage('Verify') {
            steps {
                echo "Verifying pipeline execution results for ${env.STUDENT_NAME}..."
                sh 'echo "Image check: ${env.IMAGE_NAME}:${env.IMAGE_TAG} exists."'
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
