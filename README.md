# AWS Website Deployment with Terraform

This repository provides a Terraform script designed to deploy a website to AWS efficiently and effectively. By leveraging various AWS services, our solution ensures a seamless and scalable deployment process.

## Overview

Our Terraform script automates the deployment of a static website to AWS, utilizing a combination of key AWS services including:

- **Amazon EC2**: Hosts the website files and runs the web server.

## Key Features

- **Automated Infrastructure Setup**: Sets up all necessary AWS infrastructure components, including VPCs, subnets, and security groups.
- **Website Deployment**: Downloads and deploys website files from a specified URL directly onto EC2 instances.

## How It Works

1. **Initialization**: Initializes the AWS environment by creating a Virtual Private Cloud (VPC) with necessary subnets and internet gateway.
2. **Instance Deployment**: Provisions and configures Amazon EC2 instances to host the website. These instances are automatically set up with required software and configurations.
3. **Website Upload**: Downloads website files from a specified URL and deploys them to the EC2 

## Getting Started

To deploy the website, follow these steps:

1. **Clone the Repository**: Download the Terraform script from this repository.
   ```bash
   git clone https://github.com/your-repo/aws-website-deploy.git
   cd aws-website-deploy
