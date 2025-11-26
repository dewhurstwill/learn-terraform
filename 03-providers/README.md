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
  - terraform.tf

## Version Pinning 

It is a best practice to pin the version of the provider you are using in your Terraform configuration. This ensures that your infrastructure remains stable and predictable, as updates to providers can introduce breaking changes. You can specify the version of a provider in the `required_providers` block within the `terraform` block of your configuration file.

### Version constraint syntax

A version constraint is a string literal containing one or more conditions separated by commas.

Each condition consists of an operator and a version number.

Version numbers are a series of numbers separated by periods, for example 1.2.0. It is optional, but you can include a suffix to indicate a beta release. Refer to Specify a pre-release version for additional information.

Use the following syntax to specify version constraints:

`version = "<operator> <version>"`

In the following example, Terraform installs a versions 1.2.0 and newer, as well as version older than 2.0.0:

`version = ">= 1.2.0, < 2.0.0"`


### Understanding Version Operators

| Operator	| Description |
|-------------|-------------|
| = | no operator	Allows only one exact version number. Cannot be combined with other conditions. |
| !=	| Excludes an exact version number. |
| >, >=, <, <=	| Compares to a specified version. Terraform allows versions that resolve to true. The > and >= operators request newer versions. The < and <= operators request older versions. |
| ~>	| Allows only the right-most version component to increment Examples: ~> 1.0.4: Allows Terraform to install 1.0.5 and 1.0.10 but not 1.1.0. ~> 1.1: Allows Terraform to install 1.2 and 1.10 but not 2.0. |

## Setting up a provider

Setup our terraform configuration and provider

1. Open `terraform.tf` and add the following code:
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
5. Run `terraform providers` to see the providers in use
6. Verify that the `random` provider is listed

You will notice that terraform created a `.terraform` directory in your project folder. This directory contains the provider plugins and other necessary files for Terraform to function properly as well as a lock file named `terraform.lock.hcl` which records the provider selections made during initialisation to ensure consistent provider versions in future runs.