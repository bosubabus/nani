stage('Docker Image') {
            steps {
                echo 'Docker Image building'
                sh 'docker build -t devopshubg333/batch13:${BUILD_NUMBER} .'
            }
        }
