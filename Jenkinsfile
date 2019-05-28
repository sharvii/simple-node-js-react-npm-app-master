pipeline {
    agent any
    tools {nodejs "node"}
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/scripts/deploy.sh' 
                /*  sh 'ssh -tt ec2-user@ec2-18-220-71-177.us-east-2.compute.amazonaws.com' */ 
              
               
            }
        }
    }
}
