pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'tobaina/java-web-calculator'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/tobaina/JavaWeb3.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh 'docker build -t ${DOCKER_IMAGE} .'
                }
            }
        }
        
        stage('Push to Docker Hub') {
            steps {
                script {
                    // Push the Docker image to Docker Hub
                    sh 'docker push ${DOCKER_IMAGE}'
                }
            }
        }
        
        stage('Run the Docker Container') {
            steps {
                script {
                    // Run the Docker container
                    sh 'docker run -d -p 8080:8080 ${DOCKER_IMAGE}'
                }
            }
        }
    }
}
