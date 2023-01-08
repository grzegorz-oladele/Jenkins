pipeline  {
    agent docker-agent-jenkins-project
    stages {
        stage('Build image') {
            steps {
                script {
                    sh 'docker build -t grzesiekoladele/jenkins .'
                }
            }
        }
    }
}
