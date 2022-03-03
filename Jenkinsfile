pipeline {
    agent any

    stages {
        stage('Docker Build') {
            agent {
                dockerfile {
                    filename 'Dockerfile'
                    args ''
                    reuseNode true
                }
            }
        }

        steps {
            echo "$HOME"
            echo "Hello docker test"
        }
    }
}