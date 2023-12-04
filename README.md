# terraform+terragrunt_example

This example includes 2 basic Terraform modules located in the modules/ folder:
- dynamodb module provisions an AWS DynamoDB table and an IAM Role & Policy to access this table
- redis module provisions en AWS Elasticache Redis cluster and Replication Group

Let's imagine we have 2 microservices (account and user) and 2 environments (stage and prod).

Under the environments/ folder, I used Terragrunt to provision each of the 2 Terraform modules for each of the 2 microservices in each of the 2 environments.

The purpose of this example is to show that this architecture and structure allows for expandability: we can easily add another environment, we can easily add another microservice, we can easily add another terraform module.