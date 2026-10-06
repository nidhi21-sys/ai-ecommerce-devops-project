pipeline {
  agent any
  
  environment {
     IMAGE_NAME = 'nidhi460/nexvion'
     IMAGE_TAG = "build-${BUILD_NUMBER}"
    
    }
  stages {
     
     stage('Checkout') {
        steps {
           checkout scm
        }
    }
     stage('Validate') {
        steps {
           sh 'test -f index.html'
           sh 'test -f Dockerfile'
        }
   }
    stage('Build Docker Image') {
       steps {
          sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
       }
   }
    stage('Test') {
       steps {
         sh 'echo "Running application tests"'
       }
   }
    stage('Security Scan') {
       steps {
         sh "trivy image ${IMAGE_NAME}:${IMAGE_TAG}"
       }
   }
    stage('Push') {
      steps {
        echo 'Push image to Docker Hub'
       }
  }
   stage('Deploy') {
      steps {
        echo 'Deploy application'
       }
  }
  stage('Verify') {
     steps {
       echo 'Verify deployment'
      }
    }
  }
}





