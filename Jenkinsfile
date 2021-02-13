pipeline {
    // agent { 
    //     docker { 
    //         image 'nginx:alpine'
    //         args '-p 3006:80'
    //     } 
    // }
    // agent {
    //     docker {
    //         image 'node:6-alpine'
    //         args '-p 3000:3000'
    //     }
    // }
    agent any
    environment {
        CI = 'true' 
    }
    stages {
        stage('Build') {
            steps {
                sh "./build.sh"
            }
        }
        stage('Test') {
            steps {
                echo 'TODO: Testing..'
            }
        }
        stage('Deploy') {
            steps {
                sh "./deploy.sh"
            }
        }
    }
}