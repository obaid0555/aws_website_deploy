AWS Website Deployment with Terraform
In this repository, we provide a Terraform script designed to deploy a website to AWS efficiently and effectively. Our solution leverages AWS services to ensure a seamless and scalable deployment process.

Overview
Our Terraform script automates the deployment of a static website to AWS, utilizing a combination of key AWS services including:

Amazon EC2: To host the website files and run the web server.
Amazon S3: To store static website content and ensure high availability.
Amazon CloudFront: To deliver the website content globally with low latency.
Amazon Route 53: For DNS management and to route traffic to the CloudFront distribution.
Auto Scaling & Load Balancing: To ensure that the website scales dynamically based on traffic and remains highly available.
Key Features
Automated Infrastructure Setup: The Terraform script sets up all the necessary AWS infrastructure components, including VPCs, subnets, security groups, and more.
Website Deployment: The script handles the deployment of website files from a specified URL directly onto the EC2 instances.
Scalability and High Availability: With Auto Scaling and Load Balancing configured, the deployment ensures that the website can handle varying levels of