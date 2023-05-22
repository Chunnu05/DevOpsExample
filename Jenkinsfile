pipeline {
  agent any
  
  stages {
    stage('Build') {
      steps {
        // Build the Docker image
        sh 'docker build -t <your-dockerhub-username>/devops .'
      }
    }
    
    stage('Push to DockerHub') {
      steps {
        // Authenticate with Docker Hub using credentials from Jenkins
        withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')]) {
          sh '''
            echo $DOCKERHUB_PASSWORD | docker login -u $DOCKERHUB_USERNAME --password-stdin
            docker push <your-dockerhub-username>/devops
          '''
        }
      }
    }
  }
}
