pipeline {
    agent any

    tools {
        // AInstall the Maven version configured as "M3" and add it to the path.
        maven "M3"
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
