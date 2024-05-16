pipeline {
  environment {
    imagename = "java-docker2"
    registryCredential = 'dockergit248'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        echo "Clone"
       // git([url: 'https://github.com/dockergit248/DockerJavaApp.git', branch: 'master', credentialsId: 'dockergit248'])
 
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build java-docker2
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( 'dockergit248',  ) {
            dockerImage.push("23.08")
             dockerImage.push('latest')
          }
        }
      }
    }
 
    }
  }
