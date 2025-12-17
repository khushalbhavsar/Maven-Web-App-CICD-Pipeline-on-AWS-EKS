# Cloud Native Maven Application CI/CD on AWS EKS

## Tools Used
- Java 17
- Maven
- GitHub
- Jenkins
- Docker
- Kubernetes (AWS EKS)

## CI/CD Flow
GitHub → Jenkins → Maven → Docker → EKS

## Deployment
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

## Access Application
kubectl get svc cloud-native-service

Open:
http://<LoadBalancer-DNS>/cloud-native-maven-app
