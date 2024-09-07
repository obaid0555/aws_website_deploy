# AWS Website Deployment with Terraform

This repository provides a Terraform script designed to deploy a website to AWS efficiently and effectively. By leveraging various AWS services, our solution ensures a seamless and scalable deployment process.

## Overview

Our Terraform script automates the deployment of a static website to AWS, utilizing a combination of key AWS services including:

- **Amazon EC2**: Hosts the website files and runs the web server.
- **Amazon S3**: Stores static website content and ensures high availability.
- **Amazon CloudFront**: Delivers website content globally with low latency.
- **Amazon Route 53**: Manages DNS and routes traffic to the CloudFront distribution.
- **Auto Scaling & Load Balancing**: Ensures scalability and high availability based on traffic.

## Key Features

- **Automated Infrastructure Setup**: Sets up all necessary AWS infrastructure components, including VPCs, subnets, and security groups.
- **Website Deployment**: Downloads and deploys website files from a specified URL directly onto EC2 instances.
- **Scalability and High Availability**: Configures Auto Scaling and Load Balancers to handle varying traffic loads and ensure website availability.
- **Content Delivery Optimization**: Uses CloudFront to enhance content delivery speed and reduce latency for global users.
- **Security**: Implements security groups and best practices to protect infrastructure and website.

## How It Works

1. **Initialization**: Initializes the AWS environment by creating a Virtual Private Cloud (VPC) with necessary subnets and internet gateway.
2. **Instance Deployment**: Provisions and configures Amazon EC2 instances to host the website. These instances are automatically set up with required software and configurations.
3. **Website Upload**: Downloads website files from a specified URL and deploys them to the EC2 instances.
4. **Scaling and Load Balancing**: Configures Auto Scaling groups and Load Balancers to manage traffic loads.
5. **Content Distribution**: Sets up CloudFront for global distribution of website content, optimizing performance and reducing load times.
6. **DNS Configuration**: Uses Route 53 for domain name resolution and directs traffic to the CloudFront distribution.

## Getting Started

To deploy the website, follow these steps:

1. **Clone the Repository**: Download the Terraform script from this repository.
   ```bash
   git clone https://github.com/your-repo/aws-website-deploy.git
   cd aws-website-deploy
