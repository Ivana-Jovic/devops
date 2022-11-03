pipeline {
    agent any
    stages {
        stage('pull from git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Ivana-Jovic/devops.git']]]) 
            }
        }
        stage ('build image') {
            steps {
                sh 'docker build -t mynginx .'
            }
        }
        stage ('start nginx server') {
            steps {
                sh 'docker run -dp 80:80 mynginx'
            }
        }
    }
}