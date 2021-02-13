pipeline {
    // agent { 
    //     docker { 
    //         image 'nginx:alpine'
    //         args '-p 3006:80'
    //     } 
    // }

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
        // stage('Test') {
        //     steps {
        //         echo 'Testing..'
        //     }
        // }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh "./deploy.sh"
            }
        }
    }
}