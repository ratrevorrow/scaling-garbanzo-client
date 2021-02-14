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
        registry = "rtrevorrow/dashboard" 
        registryCredential = 'rtrevorrow'
        dockerImage = '' 
    }
    stages {
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }                
                sh "./build.sh"
                // sh "rm -rf node_modules/ || true"
                // sh "rm -f package-lock.json/ || true"
                // sh "npm cache clean --force"
                // sh "npm i"
                docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                }
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