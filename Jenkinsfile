pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "mvn -DskipTests clean package"
                sh "zip bucha-artifact-test.zip target/*.jar Dockerfile"
            }

            post {
                success {
                    archiveArtifacts 'bucha-artifact-test.zip'
                }
            }
        }
        stage('Upload') {
            steps {
                s3Upload(file:'bucha-artifact-test.zip', bucket:'semperti-rapientrega-development-s3-backend-artifact', path:'bucha-artifact-test.zip')
            }
        }
    }
}
