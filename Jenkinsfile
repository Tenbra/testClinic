pipeline {
    agent any
    tools {
        maven 'maven'
        'org.jenkinsci.plugins.docker.commons.tools.DockerTool' 'docker'
    }

    stages {
        stage('Build jar') {
            steps {
                echo 'Building..'
                sh 'mvn clean install -DskipTests' 
            }
        }
        
        stage('Build Docker image') {
            steps {
                echo 'Build docker image...'
                sh 'docker build -t petclinic ./'
            }
        }
    }
}