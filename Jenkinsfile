pipeline {
    agent { 
        docker { 
            image 'nginx:alpine'
            args '-p 3006:80'
        } 
    }

    stages {
        stage('Build') {
            steps {
                sh "sudo npm install"
                sh "sudo npm run build"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}