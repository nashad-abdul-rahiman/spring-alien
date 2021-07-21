// Uses Declarative syntax to run commands inside a container.
pipeline {
  agent none

  stages {
    stage('Build') {
      agent {
        kubernetes {

          yaml '''
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: shell
    image: maven
    securityContext:
      privileged: true
    command:
     - cat
    tty: true
'''
         
          // Can also wrap individual steps:
          // container('shell') {
          //     sh 'hostname'
          // }
          defaultContainer 'shell'
        }
      }
      stages {
        stage('Checkout Source') {
          steps {
            git 'https://github.com/nashad-abdul-rahiman/spring-alien.git'
          }
        }
        stage('SonarQube Analysis') {
          steps {
            script {
              def mvn = tool 'maven default'
              withSonarQubeEnv() {
                  sh "${mvn}/bin/mvn sonar:sonar"
              }
            }
          } 

        }
      }

    }
  }

}
