pipeline {
    agent any

    tools {
        maven "Maven-3.9.9"
    }

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-username/cloud-native-maven-eks-cicd.git'
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t yourdockerhub/cloud-native-maven-app:latest .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push yourdockerhub/cloud-native-maven-app:latest'
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh '''
                kubectl apply -f k8s/deployment.yaml
                kubectl apply -f k8s/service.yaml
                '''
            }
        }
    }
}
