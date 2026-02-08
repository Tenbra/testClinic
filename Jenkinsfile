pipeline {
    agent any
    tools {
        maven 'maven'
        'org.jenkinsci.plugins.docker.commons.tools.DockerTool' 'latest'
    }

    stages {
        stage('Build jar') {
            steps {
                echo 'Building..'
                sh 'mvn clean install -DskipTests' 
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'mvn test' 
            }
        }
        stage('Build Docker image') {
            steps {
                echo 'Build docker image...'
                sh 'docker-compose build'
            }
        }
    }
}