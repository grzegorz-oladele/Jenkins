pipeline {
    agent {
        node {
            label 'jenkins project is running'
        }
    }
    stages {
        stage("Build") {
            steps {
                echo "Building docker image"
                docker build -t grzesiekoladele/jenkins:latest
            }
        }
        stage("Deploy") {
            steps {
                echo "Deploying docker image to the dockerhub"
                docker login
                docker push grzesiekoladele/jenkins:latest
            }
        }
    }
}