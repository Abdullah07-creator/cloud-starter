#Cloud DevOps Starter Project

An end-to-end production-grade automated DevOps pipeline for a Python Flask Notes application. 

This project demonstrates modern cloud engineering practices—automating software delivery from local development to cloud infrastructure using **Docker, Kubernetes, Terraform, AWS, and GitHub Actions**.

---

# Tech Stack & Tools

* **Application:** Python 3, Flask, HTML/CSS (Centered Modern UI)
* **Containerization:** Docker & Docker Hub
* **Orchestration:** Kubernetes (Minikube)
* **Infrastructure as Code (IaC):** Terraform
* **Cloud Infrastructure:** AWS (VPC, Subnets, EC2, Security Groups)
* **CI/CD Automation:** GitHub Actions

---

#Architecture & Workflow

[ Developer ]
│ (git push origin main)
▼
[ GitHub Repository ]
│ (triggers workflow)
▼
[ GitHub Actions CI/CD Pipeline ]
├── 1. Checkout Code
├── 2. Set up Python Runtime
├── 3. Log in to Docker Hub (via Secrets)
└── 4. Build & Push Docker Image to Docker Hub
▼
[ Docker Hub Registry ]
│ (Image: notes-app:latest)
▼
[ Kubernetes Cluster / Minikube ]
├── Deployment (2 Replicas, Auto-healing)
└── Service (NodePort Traffic Routing)
▼
[ User Browser ]

#Repository Structure

```text
cloud-devops-starter/
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions CI/CD pipeline definition
├── app/
│   ├── app.py                  # Flask application backend
│   ├── requirements.txt        # Python dependencies
│   └── templates/
│       └── index.html          # Centered UI template
├── docker/
│   ├── Dockerfile              # Docker container configuration
│   └── .dockerignore           # Excluded files for clean Docker builds
├── k8s/
│   ├── deployment.yml          # Kubernetes deployment configuration (2 pods)
│   └── service.yml             # Kubernetes service exposing NodePort
├── terraform/
│   ├── main.tf                 # AWS Infrastructure resources (VPC, EC2, SG)
│   ├── variables.tf            # Terraform input variables
│   └── outputs.tf              # Terraform output values
├── scripts/
│   └── sys_health.sh           # Bash script for system monitoring
└── README.md                   # Project documentation

#Prerequisites
Ensure you have the following installed on your machine:

Git

Docker Desktop

Minikube & kubectl

Terraform

AWS CLI
