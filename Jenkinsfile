pipeline {
    agent any

    stages {
        stage('Docker Build') {
            agent {
                dockerfile {
                    filename 'Dockerfile'
                    args '--name jenkins-docker-test \
                          --rm \
                          --detach \
                          --network jenkins \
                          --env DOCKER_HOST=tcp://docker:2376 \
                          --env DOCKER_CERT_PATH=/certs/client \
                          --env DOCKER_TLS_VERIFY=1 \
                          --publish 8080:8080 \
                          --publish 50000:50000 \
                          --volume jenkins-data:/var/jenkins_home \
                          --volume jenkins-docker-certs:/certs/client:ro'
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