## Cloud Native Maven Web App CI/CD Pipeline on AWS EKS

This project demonstrates a complete CI/CD pipeline for a Java web application using Maven, Docker, Jenkins, and Kubernetes on AWS EKS (Elastic Kubernetes Service).

---

### 📝 Project Overview

- **Tech Stack:** Java, Maven, JSP, Docker, Jenkins, Kubernetes, AWS EKS
- **CI/CD:** Automated with Jenkins pipeline
- **Containerization:** Dockerized deployment using Tomcat
- **Orchestration:** Kubernetes manifests for deployment and service

---

### 📁 Project Structure

```
├── Dockerfile                # Docker build instructions
├── Jenkinsfile               # Jenkins pipeline definition
├── pom.xml                   # Maven project descriptor
├── k8s/
│   ├── deployment.yaml       # Kubernetes Deployment manifest
│   └── service.yaml          # Kubernetes Service manifest
├── src/main/java/com/cloudnative/Application.java
├── webapp/
│   ├── index.jsp             # Main JSP page
│   └── WEB-INF/web.xml       # Web application descriptor
└── ...
```

---

### 🚀 Pipeline Workflow

1. **Clone Repository:** Jenkins pulls the latest code from GitHub.
2. **Maven Build:** Project is built and packaged as a `.war` file.
3. **Docker Build:** Docker image is built using the generated `.war` file.
4. **Docker Push:** Image is pushed to Docker Hub.
5. **Deploy to EKS:** Kubernetes manifests are applied to deploy/update the app on AWS EKS.

---

### ⚙️ Setup & Usage

#### Prerequisites
- AWS account with EKS cluster configured
- Docker Hub account
- Jenkins server with Docker, Maven, and kubectl installed
- AWS CLI configured on Jenkins agent

#### 1. Clone the Repository
```sh
git clone https://github.com/khushalbhavsar/Maven-Web-App-CICD-Pipeline-on-AWS-EKS.git
cd Maven-Web-App-CICD-Pipeline-on-AWS-EKS
```

#### 2. Build Locally (Optional)
```sh
mvn clean package
```

#### 3. Build & Run Docker Image (Optional)
```sh
docker build -t <your-dockerhub-username>/cloud-native-maven-app:latest .
docker run -p 8080:8080 <your-dockerhub-username>/cloud-native-maven-app:latest
```

#### 4. Jenkins Pipeline
- Configure Jenkins with required credentials (GitHub, Docker Hub, AWS, etc.)
- Use the provided `Jenkinsfile` for pipeline setup

#### 5. Deploy to AWS EKS
Ensure your `kubectl` context is set to your EKS cluster, then:
```sh
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

---

### 📦 Kubernetes Manifests
- **deployment.yaml:** Deploys 2 replicas of the app container
- **service.yaml:** Exposes the app via a LoadBalancer on port 80

---

### 🔗 Useful Links
- [AWS EKS Documentation](https://docs.aws.amazon.com/eks/)
- [Jenkins Documentation](https://www.jenkins.io/doc/)
- [Docker Hub](https://hub.docker.com/)
- [Kubernetes Documentation](https://kubernetes.io/docs/)

---

### 👤 Author
- [khushalbhavsar](https://github.com/khushalbhavsar)

---

### 📃 License
This project is licensed under the MIT License.
