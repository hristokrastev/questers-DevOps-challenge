# questers-DevOps-challenge
This is the sample solution of the IaC with terraform and Azure provider

Requirements: https://tpximpact.notion.site/Host-a-static-website-ef33fc48e8e8482eb089ef39835877ec

Host a static website

# Brief

Describe and partly create a solution using Amazon Web Services (AWS), Microsoft Azure or Google Cloud Platform (GCP) that is able to host a static website that is accessible on the internet.

You will need to show or be able to explain how it is secure, reliable, performant, optimised for cost and sustainable. In addition, you will be able to explain how the solution can support development and run workloads effectively, gain insight into their operation, and continuously improve supporting processes and procedures to deliver business value.

The static website can as simple as the following HTML:

```bash
<h1>Hello World</h1>
```

# Guidance

- We ask that you spend no more than two hours on this task. It’s more about having a solution you’ve created to talk about rather than a fully complete solution.
- Everyone uses things like documentation, blog posts and StackOverflow when creating a solution at some point. This is fine, but we encourage you to make sure you can understand all of the elements you’re using so that you can explain it to us and answer any questions we may have.

# Expected Outputs

The following are to be hosted on a public git repository:

- Basic component design to show how your solution would be built within the cloud provider of your choice.
- At least a sample of Infrastructure-As-Code (IAC) that would build a part of your solution. Please use either Terraform, Cloudformation, Azure Resource Manager, Bicep or Google Cloud Deployment Manager.


================================================================================================================================


# Usage

Please follow the steps below marked with $ :

For convenience I will add the variables.tf and terraform.tfvars as part of the repo.

You can control the change of the region from the variables in the terraform.tfvars, add your credention as env. variable or other method that you prefer.

like so:
export ARM_CLIENT_ID="your appId is the client_id"
export ARM_CLIENT_SECRET="your password is the client_secret"
export ARM_SUBSCRIPTION_ID="your subscription is the subscription_id"
export ARM_TENANT_ID="your tenant is the tenant_id"

$ terraform init

$ terraform plan -out quest.tfplan

$ terraform apply "quest.tfplan"

The solution contain a basic folder structure with some of the resources because the time constraint is 2 hours:

It's also contains the example secure infrastructure in architecture/Sample-Architecture.jpg

The URL of the living app is: https://app-dev-quest-linux.azurewebsites.net/
