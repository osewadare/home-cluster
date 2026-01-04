# Home Cluster

Home Cluster is a small Node.js/Express service with supporting Kubernetes manifests and Terraform configuration for basic infrastructure experimentation.

## Project Layout

- `app/` - Express application and Dockerfile.
- `infrastructure/k8smanifests/` - Kubernetes deployment, service, and pod manifests.
- `infrastructure/terraform/` - Terraform configuration for AWS and (commented) Kubernetes/Helm examples.

## Application

The service exposes two endpoints:

- `GET /` returns a welcome message.
- `GET /healthy` returns a health message.

### Run locally

```bash
cd app
npm install
node server.js
```

The app listens on port `3000` by default.

### Docker

```bash
cd app
docker build -t home-cluster .
docker run --rm -p 3000:3000 home-cluster
```

## Kubernetes

Apply the manifests from `infrastructure/k8smanifests`:

```bash
kubectl apply -f infrastructure/k8smanifests/home-cluster-deployment.yaml
kubectl apply -f infrastructure/k8smanifests/home-cluster-service.yaml
```

## Terraform

The Terraform configuration lives in `infrastructure/terraform` and includes an S3 bucket plus examples (commented out) for Kubernetes namespaces and Helm releases.

```bash
cd infrastructure/terraform
terraform init
terraform plan
```
