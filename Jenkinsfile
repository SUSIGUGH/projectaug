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
        stage('SCP the Dockerfiles'){
            steps{
                sh 'pwd'
                sh 'scp -r projectaug ec2-user@34.219.82.161:~/'
                sh 'ssh ec2-user@34.219.82.161 "cd ~/projectaug/ && sudo docker-compose up --build -d && sudo docker-compose ps"'
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
