# Outputs 

## Objectives

By the end of this tutorial, you will be able to:
- Understand what Terraform outputs are and how they work
- Define and use outputs in a Terraform project


## What is an Output?

Outputs in Terraform are used to extract information from your Terraform configuration and make it available for other configurations or for display to the user. They allow you to return values from your Terraform modules and can be useful for debugging and understanding the results of your infrastructure changes.


## Project Setup

1. Navigate to the [root](../) directory 
2. Create a folder for your code
3. In the new folder, create the following file:
  - main.tf


## Defining an Output

Outputs are defined using the `output` block.
Outputs can have attributes such as `value`, `description`, and `sensitive`.
- `value`: Specifies the value of the output (e.g., a variable, a resource attribute)
- `description`: A brief description of the output's purpose
- `sensitive`: Marks the output as sensitive (secret), preventing it from being displayed in logs or output


## Task

1. Create an variable called `name` of type `string`.
2. Add your name as the value for the `name` variable in a `terraform.tfvars` file.
3. Create a local variable called `greeting` that concatenates the string `"Hello, "` with the `name` variable.
4. Create an output called `my_output` with a value of `greeting` and a description of `"The greeting output"`.