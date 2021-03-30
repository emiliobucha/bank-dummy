pipeline {
    agent any

    tools {
        
    }

    stages {
        stage('Build') {
            steps {
                sh "mvn -DskipTests clean package"
            }

            post {
                success {
                    archiveArtifacts 'target/*.jar'
                }
            }
        }
    }
}
