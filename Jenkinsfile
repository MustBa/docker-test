pipeline {
    agent none

    stages {
        stage('Docker Build') {
            agent {
                label 'docker-agent2' 
                reuseNode true
            }

            steps {
                sh ''' #!bin/sh
                pwd
                ls -ltr
                mkdir build && cd build
                cmake ..
                make -j2
                ./example
                '''
            }

            
        }

        steps {
            echo "$HOME"
            
        }
    }
}