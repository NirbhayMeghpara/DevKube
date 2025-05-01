
# DevKube

DevKube is a modular, Kubernetes-native project designed to deploy and manage containerized microservices on Google Kubernetes Engine (GKE) using cloud-native CI/CD pipelines and Infrastructure as Code (IaC) principles.

## Project Structure

- **file-gateway**: 
  - A Node.js microservice responsible for storing files in GKE persistent volumes and exposing REST APIs for file handling.
- **product-calculator**: 
  - A Node.js microservice that reads data from stored files and calculates product totals based on incoming REST API requests.
- **terraform**:
  - Terraform scripts for provisioning GKE clusters, persistent volumes (PVC), services, and networking resources.

## System Architecture

![DevKube Architecture](/assests/devkube-architecture.png)

- **Terraform** provisions the GKE Cluster, node configurations, networking, and persistent storage.
- **Cloud Build** triggers on GitHub commits, builds Docker images, and pushes them to **Artifact Registry**.
- **Kubernetes** manifests deploy the services and attach them to the GKE cluster.
- Both microservices access a shared **Persistent Volume** to store and retrieve file data.
- Inter-service communication is performed via REST APIs.

## Key Technologies

- Kubernetes (GKE)
- Terraform
- Docker
- Google Cloud Build
- Artifact Registry
- Node.js
- Express.js

## Deployment Workflow

1. **Provision Infrastructure** using Terraform scripts from the `/terraform` directory.
2. **Push Code** to GitHub to trigger **Cloud Build pipelines**.
3. **Images** are built and stored in **Artifact Registry**.
4. **Kubernetes YAMLs** in each service (`/k8s` folder) deploy the services to GKE.
5. **Services** interact with each other via API and share files via Persistent Volume.

## Running Locally

Each service can be tested locally:

```bash
cd file-gateway
npm install
npm run start
```

Repeat for `product-calculator`.

## Authors

- Nirbhay Meghpara
