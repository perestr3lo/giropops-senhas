## Password Manager - LinuxTips 💻

This project was developed during the first stage of the "Programa Intensivo em Containers e Kubernetes (PICK)" in 2024. During this initial phase, the focus was on operationalizing a Python application using containers, prioritizing efficiency, availability, and security.

---

## Summary

This repository contains the implementation of a Python application in containers, using a variety of technologies to ensure the effectiveness, availability, and security of the application. It includes instructions for configuring and running the application in different environments.

---

## Table of Contents

1. [Summary](#summary)
2. [Requirements](#requirements)
    - [Git](#git)
    - [Docker](#docker)
    - [Docker-Compose](#docker-compose)
    - [Aqua Trivy](#aqua-trivy)
    - [Cosign](#cosign)
3. [Docker & Docker-Compose](#docker--docker-compose)
4. [Aqua Trivy](#aqua-trivy)
5. [Chainguard](#chainguard)
6. [Cosign](#cosign)
7. [Instructions](#instructions)
    - [Vulnerability Scanning with Aqua Trivy](#vulnerability-scanning-with-aqua-trivy)
    - [Image Signing Verification with Cosign](#image-signing-verification-with-cosign)


## Requirements

- [Git](https://git-scm.com/downloads)
- [Docker](https://docs.docker.com/get-docker/)
- [Docker-Compose](https://docs.docker.com/compose/install/)
- [Aqua Trivy](https://aquasecurity.github.io/trivy/v0.18.3/installation/)
- [Cosign](https://docs.sigstore.dev/system_config/installation/)

---

### Docker & Docker-Compose

![Docker & Docker-Compose](https://github.com/perestr3lo/giropops-senhas/assets/60358650/5b8167ef-3a96-4b7a-a631-38bb876eb40a)

Docker and Docker-Compose are essential tools for packaging and orchestrating applications and their dependencies in containers, ensuring portability, consistency, and ease of deployment across different environments.

### Aqua Trivy

![Aqua Trivy](https://github.com/perestr3lo/giropops-senhas/assets/60358650/5e8856e9-2a5c-47e5-bfeb-a34671845b32)

Aqua Trivy is an open-source security tool that automates the detection of vulnerabilities in Docker and OCI container images, providing security and easy integration into CI/CD pipelines.

### Chainguard

![Chainguard](https://github.com/perestr3lo/giropops-senhas/assets/60358650/3be9c340-f268-4f29-8f56-408cf481abc3)

Chainguard is an approach to building container images using the "Distroless" philosophy, minimizing the size and attack surface of images, ensuring a secure and functional environment for running applications.

### Cosign

![Cosign](https://github.com/perestr3lo/giropops-senhas/assets/60358650/d63c7a73-7a14-4255-ae2f-bbd01cdf70f5)

Cosign is a container image signing tool that ensures the authenticity, integrity, and security of images before they are deployed in production environments.

---

## Instructions

To run the application in your local environment, follow these steps:

1. Clone this repository:
   ```
   git clone https://github.com/perestr3lo/giropops-senhas.git
   ```

2. Navigate to the cloned repository directory:
   ```
   cd giropops-senhas
   ```

3. Run the application using Docker Compose:
   ```
   docker compose up
   ```

### Vulnerability Scanning with Aqua Trivy

To perform a Vulnerability Scan using Aqua Trivy, follow the steps below:
```
trivy image pallestrelli/linuxtips-giropops-senhas:2.0
```

### Image Signing Verification with Cosign

If you want to verify the signature using Cosign, follow the steps below:
```
cosign verify --key cosign.pub pallestrelli/linuxtips-giropops-senhas:2.0
```
   
--- 
