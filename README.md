# DevOps Production-Style Microservice Environment

This repository contains the complete infrastructure, CI/CD, and monitoring configuration for a production-ready web application deployment. 

## 🏗️ Architecture Overview
* **Containerization:** Multi-stage `Dockerfile` optimizing build size and security.
* **Orchestration:** Local Kubernetes (Docker Desktop) deployment utilizing Deployments, Services, ConfigMaps, and Secrets.
* **CI/CD Pipeline:** GitHub Actions workflow that automatically lints, builds, scans for vulnerabilities (Trivy), and deploys to Kubernetes.
* **Infrastructure as Code (IaC):** Terraform configuration for provisioning AWS EC2 infrastructure.
* **Monitoring & Observability:** Prometheus and Grafana stack deployed via Helm for real-time cluster metrics.

## ⚙️ Prerequisites
To run this project locally, ensure you have the following installed:
* Docker & Docker Desktop (with Kubernetes enabled)
* `kubectl` CLI
* Terraform CLI
* Helm CLI

## 🚀 Deployment Instructions

### 1. Local Kubernetes Deployment
To manually apply the application manifests to your local cluster:
```bash
kubectl apply -f k8s/