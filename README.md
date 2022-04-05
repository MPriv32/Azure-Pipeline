## Summary of services used:
- EC2 w/ security groups for RDP
- VPC w/ subnets and an Internet Gaetway
- S3 bucket for my Terraform state file
- Terraform
- Azure DevOps as my CI/CD pipeline

This was my first project utilizing **Azure DevOps** and the main purpose was to get hands-on experience with it.

I decided to utilize some services that I was familiar with, to make it a little bit easier on myself when trying to learn Azure DevOps.

I used **Terraform** to create a **VPC** with an internet gateway, a private subnet, an **EC2 instance** in that private subnet with an elastic IP, security groups to allow connectivity to my VM and an **S3** bucket to store my Terraform state file.

I used Azure DevOps to automate my deployment process. Whenever I pushed an update to my GitHub repository in regards to my Terraform deployment, my pipeline with run the Terraform validate, plan and apply tasks to only make changes to the new code in my Terraform deployment.


I have a very in-depth and detailed blog post about this lab [HERE](https://mpriv32.wordpress.com/2022/02/15/azure-devops-terraform-aws-lab/)
