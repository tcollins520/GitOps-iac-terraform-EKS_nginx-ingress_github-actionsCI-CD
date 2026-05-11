This project provisions a Kubernetes cluster on AWS (EKS) using Terraform and configures an NGINX Ingress controller to expose applications externally.

It demonstrates infrastructure as code (IaC) principles combined with Kubernetes networking and traffic management.

---

## 🧰 Tech Stack

* Terraform (Infrastructure as Code)
* AWS EKS (Managed Kubernetes)
* Kubernetes
* NGINX Ingress Controller
* Helm (optional)

---

## 🏗️ Architecture Overview

```text
User → AWS Load Balancer → NGINX Ingress → Kubernetes Service → Pods
```

---

## ⚙️ What This Project Does

* Provisions AWS EKS cluster using Terraform
* Configures worker nodes and networking
* Deploys NGINX Ingress controller
* Enables external access to Kubernetes services

---

## 🌐 What is Ingress?

Ingress is a Kubernetes resource that manages external access to services inside a cluster.

The NGINX Ingress controller acts as:

* Reverse proxy
* Load balancer
* Traffic router

---

## 🚀 Terraform Workflow

```bash
terraform init
terraform plan
terraform apply
```

---

## 🔧 Prerequisites

* AWS CLI configured
* Terraform installed
* kubectl installed
* IAM permissions

---

## 🧠 Key Concepts Demonstrated

* Infrastructure as Code (IaC)
* Kubernetes cluster provisioning
* Ingress-based traffic routing
* AWS networking and load balancing

---

## 🔗 Related Projects

* CI/CD Pipeline (Jenkins → ECS/EKS)
* Microservices Docker App
* Kubernetes Deployment Repo

---

## 🚀 Future Improvements

* Helm-based ingress deployment
* HTTPS with ACM + Route53
* Auto-scaling (HPA)
* Monitoring (Prometheus + Grafana)

---

## 👩🏽‍💻 Author

Tina Collins
