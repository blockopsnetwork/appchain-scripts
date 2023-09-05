<p align="center">
  <a href="https://app.blockops.network" title="Blockops Network">
    <img src="./assets/img/blockops-logo.png" alt="Blockops-Network-logo" width="244" />
  </a>
</p>

<h1 align="center">Core API Service</h1>

- [Summary](#summary)
- [Language](#language)
- [Requirements](#requirements)
   - [Application](#application)
   - [Database](#database)
- [Deployment](#deployment)
   - [Deployment Workflow](#deployment-workflow)
- [Contributing](#contributing)
- [License](#license)


## Summary

 core API service backend for configuring and deploying resources tailored to Blockops environments.

## Language
- Node
- Typescript

## Requirements

### Application

-   Node (Version >= 16.14.0)

- Express (Version >= 4.17)

-   NPM (optional yarn) (Version >= 8.3.0)

-   TypeScript (`npm install -g typescript` || `yarn global add typescript`)

### Database
The core API service backend will primarily be using MySQL as a relational database management system (RDBMS) and Redis as an in-memory data store.

Since Redis excels at caching and storing frequently accessed data, it will be used to reduce the load on our primary database.

-   Redis (Version >= 7.0)

-   Mysql (Version >= 8.0)


## Deployment

The API core service backend is a critical component of our software infrastructure, responsible for serving data and logic to our frontend applications. To ensure reliability, scalability, and efficient management, we'll leverage **AWS EKS**, a managed Kubernetes service, and **Argo CD**, a GitOps continuous delivery tool.

Scaling is a critical consideration when it comes to maintaining the performance and availability of the API core service backend. We'll leverage Karpenter, a Kubernetes-based autoscaling solution, to automates the process of scaling workloads in Kubernetes.

### Deployment Workflow
Our deployment workflow will involve the following steps:
- **Code Development**: Our development team will write and test the code for the backend application.
- **Git Repository**: The application code, along with Kubernetes manifests and Argo CD configuration files, will be stored in a Git repository.
- **Argo CD Configuration**: Argo CD will be configured to watch this Git repository for changes.
- **CI/CD Pipeline**: We will set up a CI/CD pipeline that automates the process of building container images and pushing them to a container registry.
- **Deployment Automation**: Argo CD will automatically detect changes in the Git repository and initiate deployments to the AWS EKS cluster based on the updated configuration.
- **Monitoring and Alerts**: We will implement monitoring and alerting solutions to keep track of the application's health and performance on AWS EKS.


## Contributing
We would love to work with anyone who can contribute their work and improve this project. The details will be shared soon.


## License

Licensed Under [MIT](./LICENSE)