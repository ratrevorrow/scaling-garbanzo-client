pipeline {
    // agent { 
    //     docker { 
    //         image 'nginx:alpine'
    //         args '-p 3006:80'
    //     } 
    // }
    agent any

    stages {
        stage('Build') {
            steps {
                sh "npm run install"
                sh "npm run build"
                sh "npm run dbuild"
                sh "npm run dtag"
                sh "npm run dpush"
            }
        }
        stage('Test') {
            steps {
                echo 'TODO: Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh "./deploy.sh"
            }
        }
    }
}