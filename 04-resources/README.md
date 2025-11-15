# Resources 

## Objectives

By the end of this tutorial, you will be able to:
- Understand what Terraform resources are and how they work
- Configure a resource in a Terraform project

## What is a Resource?

Resources are the most important element in the Terraform language. Each resource block describes one or more infrastructure objects, such as virtual machines, storage accounts, or networking components. Terraform uses providers to manage these resources.

Every resource has its own set of arguments that define its properties and behavior. These arguments vary depending on the type of resource being created.

In this tutorial, we will be using the `random` provider, which is maintained by HashiCorp. The `random` provider allows us to generate random values, such as strings, integers, and passwords, which can be useful for creating unique resource names or secure credentials.

## Project Setup

1. Navigate to the folder where you created the provider configuration in the previous lesson.

## Using a provider
1. In `main.tf`, add the following code to create a random string resource:
```hcl
resource "random_string" "example" {
  length  = 16
  special = true
}
```
2. Save the file
3. Run `terraform apply` to create the resource

  3.1. When prompted, type `yes` to confirm the apply action

4. Verify that the random string has been created by checking the output in the terminal

  4.1. You should see `Apply complete! Resources: 1 added, 0 changed, 0 destroyed.`

## Accessing Resource Attributes

Once a resource is declared, you can access its attributes using the syntax `resource_type.resource_name.attribute`. For example, to access the generated random string from the `random_string` resource we created, you can use `random_string.example.result`. This can be useful for referencing resource attributes in other parts of your Terraform configuration or for outputting values.