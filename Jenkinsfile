pipeline {

    agent any 

    stages {

        stage('Build Images') {

            steps{

                sh 'chmod +x ./scripts/*.sh'
                sh './scripts/build_images.sh'

            }

        }

        stage('Build Stack') {

            steps{

                sh './scripts/build_swarm.sh'

            }

        }

//        stage('Update Stack') {
//
//            steps{
//
//                sh './scripts/update_swarm.sh'
//
//            }
//
//        }

        stage('Clean Stack') {

            steps{

                sh './scripts/clean.sh'

            }

        }

       

    }


}