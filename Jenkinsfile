pipeline{
    agent any
    stages{
        stage('Clone Git'){
            steps{
                sh 'rm -Rf projectaug'
                sh 'git clone https://github.com/SUSIGUGH/projectaug.git'
                sh 'ls -ltr'
            }
        }
        stage('Build Docker Image'){
            steps{
                sh 'cd projectaug/redis && sudo docker build -t custredis .'
            }
        }
        stage('Create Container'){
            steps{
		sh 'scripts/chkcontainer.sh'
                sh 'sleep 30'
                sh 'sudo docker run -d --name=redis01 custredis'
                sh 'sudo docker ps'
            }
        }
        // stage('Run Docker Container'){
        //     steps{
        //         sh 'sudo docker ps'
        //         sh 'sudo docker stop nginx01'
        //         sh 'sleep 30'
        //         sh 'sudo docker rm nginx01'
        //         sh 'sleep 30'
        //         sh 'sudo docker run -d --name=nginx01 nginx'
        //         sh 'sudo docker ps'
        //     }
        // }
    }
}
