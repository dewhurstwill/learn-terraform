# Providers 

## Objectives

By the end of this tutorial, you will be able to:
- Understand what Terraform providers are and how they work
- Configure a provider in a Terraform project

## What is a Provider?

Providers are responsible for interacting with a variety of cloud providers, SaaS solutions and other APIs. Terraform has a large number of providers available, both from HashiCorp and from third-party developers. An extensive list can be found in the [Terraform Registry](https://registry.terraform.io/browse/providers).

In this tutorial, we will be using the `random` provider, which is maintained by HashiCorp. The `random` provider allows us to generate random values, such as strings, integers, and passwords, which can be useful for creating unique resource names or secure credentials.

## Project Setup

1. Navigate to the [root](../) directory 
2. Create a folder for your code
3. In the new folder, create the following file:
  - main.tf

## Version Pinning 

It is a best practice to pin the version of the provider you are using in your Terraform configuration. This ensures that your infrastructure remains stable and predictable, as updates to providers can introduce breaking changes. You can specify the version of a provider in the `required_providers` block within the `terraform` block of your configuration file.

### Understanding Version Constraints

| Operator	| Description |
|-------------|-------------|
| = | no operator	Allows only one exact version number. Cannot be combined with other conditions. |
| !=	| Excludes an exact version number. |
| >, >=, <, <=	| Compares to a specified version. Terraform allows versions that resolve to true. The > and >= operators request newer versions. The < and <= operators request older versions. |
| ~>	| Allows only the right-most version component to increment Examples: ~> 1.0.4: Allows Terraform to install 1.0.5 and 1.0.10 but not 1.1.0. ~> 1.1: Allows Terraform to install 1.2 and 1.10 but not 2.0. |

## Setting up a provider

Setup our terraform configuration and provider

1. Open `main.tf` and add the following code:
```hcl
terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
  required_version = ">= 1.0.0"
}

provider "random" {}
```
2. Save the file
3. Run `terraform init` to initialize the project
4. Verify that the initialisation was successful