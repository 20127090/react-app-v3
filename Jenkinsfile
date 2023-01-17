pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Clone') {
      steps {
        git credentialsId: 'Git', url: 'https://github.com/20127090/react-app-v3.git'
      }
    }

    stage('Build') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u 20127090 -p Tu01225669718"
          sh "docker build -t reactappv3 ."
          sh "docker push reactappv3 "
        }
        // withDockerRegistry(credentialsId: 'docker', url: 'https://index.docker.io/v10/') {
        //   sh "docker build -t reactappv3 ."
        //   sh "docker push reactappv3 "
        // }
      }
    }

  }
}