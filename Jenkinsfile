pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building step'
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla-cohen/todo-be:latest -f DockerfilePipeline --target builder .'
            }
        }
        stage('Delivery') {
            steps {
                echo 'Delivery step'
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla-cohen/todo-be:latest -f DockerfilePipeline --target delivery .'
            }
        }
         stage('Cleanup') {
            steps {
                echo 'Cleanup the system'
                sh 'docker system prune -f'
            }
        }
         stage('Push') {
            steps {
                echo 'pushing back-end to dockerhub'
                sh 'docker login -u tehilla2022 -p ilmtv98967'
                sh 'docker push tehilla-cohen/todo-be:latest'
            }
        }
    }
}
