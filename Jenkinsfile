// Jenkinsfile
pipeline {
  agent any
  
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t pankajjain0501/devops .'
      }
    }
    
    stage('Push to DockerHub') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')]) {
          sh '''
            echo $DOCKERHUB_PASSWORD | docker login --pankajjain0501 $DOCKERHUB_USERNAME --Medstick@123-stdin
            docker push pankajjain0501/devops
          '''
        }
      }
    }
  }
}
