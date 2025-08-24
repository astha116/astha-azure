# astha-azure
# Complete DevOps Implementation - Azure & Kubernetes

## 1. Repository Setup and Version Control

### GitHub Repository Structure

```
project-repo/
├── src/
│   ├── app/
│   └── Dockerfile
├── terraform/
├── kubernetes/
├── azure-pipelines.yml
├── infra.yml
└── Manifest-files/
```

### Branching and Workflow

- **Main Branch**: Production-ready code
- **Develop Branch**: Integration branch for features

### Pull Request Workflow

1. Create feature branch from develop
2. Submit pull request with detailed description
3. Code review process with few approvers
4. Automated checks (CI pipeline, security scans)
5. Merge to develop after approval

<img width="940" height="416" alt="image" src="https://github.com/user-attachments/assets/16a2839b-707e-4772-963e-8dd2a6d77284" />

<img width="940" height="436" alt="image" src="https://github.com/user-attachments/assets/fc81ee51-52c5-4062-a0dc-aa0d804bd413" />

## 2. CI/CD Pipeline Implementation

### Multi-Stage Azure DevOps Pipeline Architecture

- Created Multi-Stage Azure DevOps Pipeline Architecture for build and deploy
- Created Azure DevOps pipeline for deploying Azure architecture using terraform

<img width="940" height="358" alt="image" src="https://github.com/user-attachments/assets/60dfc582-38e0-418f-8cb4-72b4b0641334" />


<img width="940" height="429" alt="image" src="https://github.com/user-attachments/assets/cd9e1030-7a8d-49ad-9ba6-8c37db90c8fb" />

<img width="940" height="401" alt="image" src="https://github.com/user-attachments/assets/fac425b3-7c0a-44bc-b6ce-e29d73c35cf1" />


<img width="940" height="320" alt="image" src="https://github.com/user-attachments/assets/5e45094e-c2b8-4e05-94b6-ddc24c447227" />


### Pipeline Features

- **Approval Gates**: Approval required before running the pipeline
- **Secret Management**: Secrets managed through Azure Key Vault
- **Code Quality**: SonarQube analysis integrated
- **Security**: Key Vault secrets securely downloaded during pipeline execution

<img width="719" height="663" alt="image" src="https://github.com/user-attachments/assets/168f3c44-1953-42ed-90c7-02da23c60f25" />


<img width="940" height="415" alt="image" src="https://github.com/user-attachments/assets/8b2a67ba-a258-487c-be05-a5c0540b802e" />

<img width="940" height="357" alt="image" src="https://github.com/user-attachments/assets/bd6dcb8b-26d2-4504-99af-5f73a345c0d1" />

<img width="940" height="350" alt="image" src="https://github.com/user-attachments/assets/b90fbb26-f7ea-40dc-8dea-c00631d37c22" />

<img width="940" height="468" alt="image" src="https://github.com/user-attachments/assets/29a59281-e948-4b77-bbb8-290b908268ba" />

<img width="940" height="251" alt="image" src="https://github.com/user-attachments/assets/b51ed88a-3da9-4a12-8d8e-8ae4be0ca821" />

<img width="940" height="531" alt="image" src="https://github.com/user-attachments/assets/bcd78f65-02d4-433b-999f-6927fe5819b6" />

### Key Components

- Variable groups and secret libraries configured
- Automated testing and quality gates
- Infrastructure deployment automation
- Container image building and pushing

## 3. Infrastructure as Code with Terraform

### AKS Cluster Provisioning

- Automated Azure Kubernetes Service (AKS) cluster provisioning
- Azure Analytics integration for monitoring and insights

<img width="377" height="427" alt="image" src="https://github.com/user-attachments/assets/9f8bf98b-992f-4a56-a895-95656edbca92" />


### Azure DevOps Integration

- Infrastructure deployment executed through Azure DevOps pipeline
- Terraform state managed in Azure Storage Account
- Approval gates implemented for production infrastructure changes

## 4. Containerization and Registry

### Docker Implementation

- Dockerfile created for application containerization
- Multi-stage builds for optimized image size
- Security best practices implemented

<img width="940" height="583" alt="image" src="https://github.com/user-attachments/assets/e03a6d01-9dac-4b68-b2cf-db21ad81d6a1" />

### Azure Container Registry (ACR)

- Images automatically built and pushed through CI pipeline
- Container registry integrated with AKS for seamless deployment
- Image vulnerability scanning enabled

<img width="940" height="433" alt="image" src="https://github.com/user-attachments/assets/0ebcf180-705c-49fe-9b9a-0af7e5cc7814" />

## 5. Kubernetes Deployment

### Deployment Configuration

- **Deployment YAML**: Comprehensive deployment configuration with resource limits and health checks
- **Path-Based Routing**: Application deployed with different path configurations for environment-specific routing
- **Multi-Environment Support**: Separate configurations for dev, test, and production

<img width="940" height="1236" alt="image" src="https://github.com/user-attachments/assets/233d80da-de6f-4f69-b230-06351c6b85e3" />

<img width="587" height="1288" alt="image" src="https://github.com/user-attachments/assets/04ac20f9-4bf4-45c2-ba51-103805fbd231" />


<img width="695" height="1452" alt="image" src="https://github.com/user-attachments/assets/fd53776e-edfe-422e-9282-e81ca214b9c3" />


### Key Features

- Resource quotas and limits configured
- Health checks and readiness probes implemented
- Environment-specific configurations
- Horizontal Pod Autoscaler (HPA) configured

## 6. Helm Chart Implementation

### Chart Structure

```
helm-chart/
├── Chart.yaml
├── values-dev.yaml
├── values-test.yaml
├── values-prod.yaml
├── templates/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│   └── hpa.yaml
```

### Deployment Command

```bash
helm install node-app-prod ./Manifest-files --namespace prod --values values-prod.yaml
```

### Benefits

- Templated Kubernetes manifests
- Environment-specific value files
- Simplified deployment process
- Version management capabilities

<img width="940" height="211" alt="image" src="https://github.com/user-attachments/assets/1f0cb471-8c80-4b42-bacf-441f0ac0cc8f" />

## 7. Monitoring and Observability

### Azure Monitor Configuration

- Log Analytics workspace integrated with AKS cluster
- Container insights enabled for pod-level monitoring
- Custom metrics and alerts configured

### Monitoring Features

- **KQL Queries**: Custom KQL queries for error analysis and troubleshooting
- **Pod Logs**: Centralized logging for all application pods
- **Performance Metrics**: Resource utilization and performance monitoring
- **Health Checks**: Comprehensive health monitoring across all environments

<img width="940" height="409" alt="image" src="https://github.com/user-attachments/assets/2f296a25-0d17-4c37-8a63-4e1ca67c295d" />

<img width="940" height="411" alt="image" src="https://github.com/user-attachments/assets/bd1544af-bef4-4b3f-b62b-e2bad393e3a5" />

<img width="940" height="62" alt="image" src="https://github.com/user-attachments/assets/9aff0c8c-0945-41ff-ab6d-cbb0e6fba5b8" />


<img width="940" height="397" alt="image" src="https://github.com/user-attachments/assets/34b7dd77-449c-4575-81bf-4e05cf65dff2" />


<img width="836" height="1078" alt="image" src="https://github.com/user-attachments/assets/91809205-1953-4ba2-8171-85fdb3b8c2b3" />

*Kubernetes describe command output showing pod details*

<img width="940" height="137" alt="image" src="https://github.com/user-attachments/assets/42847cda-3737-49c2-8ab1-00ec6a2608d0" />

*Application pod logs*

### Application Verification

- Application working as expected in all environments using path-based routing
- Health checks passing consistently
- Performance monitoring showing optimal resource usage

## 8. Troubleshooting and Resolution

### Resource Management

- **Issue Identified**: Resource constraints due to limited node capacity (2 nodes)
- **Resolution**: Reduced number of pods to optimize resource allocation
- **Outcome**: Successful deployment across all environments

<img width="940" height="342" alt="image" src="https://github.com/user-attachments/assets/8c508669-c648-4176-9dcb-95988b37610e" />


<img width="940" height="285" alt="image" src="https://github.com/user-attachments/assets/76512076-dbcd-4fea-a7ad-767aab0dec95" />


<img width="940" height="302" alt="image" src="https://github.com/user-attachments/assets/98e879f2-62f8-481c-a4d4-25b55f93ac06" />


<img width="940" height="351" alt="image" src="https://github.com/user-attachments/assets/55a0be1d-432c-4752-b058-169d1c0d2608" />


<img width="940" height="350" alt="image" src="https://github.com/user-attachments/assets/72e92bc2-b073-49ab-a15c-cb34b00346a6" />


### Monitoring and Alerting

- Proactive monitoring enabled to prevent similar issues
- Resource utilization alerts configured
- Automated scaling policies implemented

## Key Achievements

✅ **Complete CI/CD Pipeline**: Automated build, test, and deployment process
✅ **Infrastructure as Code**: Fully automated infrastructure provisioning
✅ **Multi-Environment Support**: Dev, test, and production environments
✅ **Security Integration**: SonarQube analysis and Azure Key Vault integration
✅ **Monitoring & Observability**: Comprehensive monitoring with Azure Monitor
✅ **Container Orchestration**: Kubernetes deployment with Helm charts
✅ **Path-Based Routing**: Environment-specific application routing
✅ **Resource Optimization**: Efficient resource allocation and scaling

## Best Practices Implemented

- Git flow branching strategy
- Pull request reviews and automated checks
- Infrastructure as Code with Terraform
- Container best practices with Docker
- Kubernetes resource management
- Helm templating for deployment flexibility
- Comprehensive monitoring and logging
- Security scanning and secret management
