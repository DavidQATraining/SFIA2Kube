pipeline {

    agent any 

    stages {

        stage('Build') {

            steps{

                sh 'chmod +x ./scripts/*.sh'
                sh './scripts/before_installation.sh'
                sh './scripts/build_images.sh'
                sh './scripts/build_swarm.sh'

            }

        }

    }


}