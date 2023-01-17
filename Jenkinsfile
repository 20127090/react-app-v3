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
        sh 'sh "docker build -t reactappv3 ."'
      }
    }

    stage('Push') {
      steps {
        sh 'docker push reactappv3'
      }
    }

  }
}