pipeline {
   agent any
   stages{
      stage('Build') {
            steps {
                sh 'mvn clean install'
            }
            post {
                success {
                      echo 'Now Archiving....'
                      archiveArtifacts artifacts: '**/target/*.jar'
                }
           }
      }
      stage('Deploy to Staging') {
          steps {
                 build job: 'deploy-flink-to-staging'
          }
      }

  }
}