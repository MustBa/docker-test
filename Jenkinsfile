pipeline {
    agent none

    stages {
        stage('Docker Build') {
            agent {
                dockerfile {
                    filename 'Dockerfile'
                    args '--privileged '
                    label 'docker-agent2'
                    reuseNode true
                }
            }

            steps {
                sh ''' #!bin/sh
                pwd
                ls -ltr
                mkdir build && cd build
                cmake ..
                make -j2
                ./example
                ls -ltr
                '''
            }
        }
    }
}