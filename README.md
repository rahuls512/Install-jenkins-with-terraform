# Install Jenkins with Terraform

Streamlined AWS Automation: Seamlessly Orchestrating Jenkins Deployment on Amazon EC2 through Terraform

![AWS Automation](https://github.com/rahuls512/Install-jenkins-with-terraform/assets/123796550/9e538dfc-2ad6-47fe-8f03-07225e826d29)

## Overview

This repository contains Terraform scripts to automate the deployment of Jenkins on Amazon EC2. By leveraging Terraform, you can easily set up and configure Jenkins on AWS, ensuring a smooth and reproducible process.

## Prerequisites

Before deploying Jenkins with Terraform, ensure the following tools and configurations are in place:

1. **AWS Account Setup**: Make sure you have an active AWS account with the necessary permissions to create EC2 instances and other resources.

2. **Installing Terraform**: Install Terraform by following the instructions at [https://www.terraform.io/downloads.html](https://www.terraform.io/downloads.html).

3. **Jenkins**: Set up Jenkins by following the installation guide at [https://www.jenkins.io/doc/book/installing/](https://www.jenkins.io/doc/book/installing/).

4. **Git and GitHub**: Install Git from [https://git-scm.com/](https://git-scm.com/) and create a GitHub account if you don't have one.

5. **AWS CLI**: Install the AWS Command Line Interface by following the instructions at [https://aws.amazon.com/cli/](https://aws.amazon.com/cli/).

6. **AWS IAM User**: Create an IAM user in your AWS account with the necessary permissions for Terraform and EC2.

7. **AWS Access Key Configuration**: Configure the AWS access key and secret key on your local machine using the AWS CLI.

8. **Amazon S3 bucket and a DynamoDB table**: Set up an S3 bucket and a DynamoDB table to store Terraform state. Refer to [https://www.terraform.io/docs/language/settings/backends/s3.html](https://www.terraform.io/docs/language/settings/backends/s3.html) for details.

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/rahuls512/Install-jenkins-with-terraform.git
