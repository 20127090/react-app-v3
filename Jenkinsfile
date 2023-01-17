pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Clone') {
      steps {
        git(url: 'https://github.com/20127090/react-app-v3.git', branch: 'master', poll: true, credentialsId: 'Git')
      }
    }

    stage('Build') {
      steps {
        withDockerRegistry(credentialsId: 'docker', url: 'https://index.docker.io/v10/') {
          sh "docker build -t reactappv3 ."
          sh "docker push reactappv3 "
        }
      }
    }

  }
}