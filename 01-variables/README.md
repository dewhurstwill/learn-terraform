# Variables 

## Objectives

By the end of this tutorial, you will be able to:
- Understand what Terraform variables are and how they work
- Define and use variables in a Terraform project
- Understand the different types of variables available in Terraform


## What is a Variable?

Variables in Terraform are used to define values that can be reused throughout your configuration. They allow you to parameterise your Terraform code, making it more flexible and easier to manage. Variables can be defined with default values, or they can be set at runtime using command-line flags, environment variables, or variable definition files.


## Types of Variables
Terraform supports several types of variables, including:
- String: A sequence of characters
- Number: A numeric value (integer or float)
- Boolean: A true or false value
- List: An ordered collection of values
- Map: A collection of key-value pairs
- Object: A complex type that allows you to define a collection of named attributes with specific types


## Variables vs Locals

While both variables and locals are used to store values in Terraform, they serve different purposes. Variables are intended to be set from outside the configuration, allowing for user input and flexibility. Locals, on the other hand, are used to define values that are computed within the configuration itself and are not meant to be set externally.


## Project Setup

1. Navigate to the [root](../) directory 
2. Create a folder for your code
3. In the new folder, create the following file:
  - main.tf


## Defining a Variable

Variables are defined using the `variable` block.
Variables can have attributes such as `type`, `default`, and `description`.
- `type`: Specifies the type of the variable (e.g., string, number, bool, list, map, object)
- `default`: Provides a default value for the variable if none is set
- `description`: A brief description of the variable's purpose
- `sensitive`: Marks the variable as sensitive (secret), preventing it from being displayed in logs or output


## Task

1. Create a variable called `my_string_variable` of type `string` with a default value of `"Hello, Terraform"`.
2. Create a variable called `my_number_variable` of type `number` with a default value of `42`.
3. Create a variable called `my_list_variable` of type `list` with a default value of `["apple", "banana", "cherry"]`.
4. Create a variable called `my_map_variable` of type `map` with a default value of which has 2 keys `key1` and `key2` their values should be strings. 
5. Create a variable called `my_boolean_variable` of type `bool` with a default value of `true`.
6. Create a secret variable called `my_secret_variable` of type `string` with no default value. The value for this variable should be set in a `terraform.tfvars` file.
7. Create a local variable called `my_constant` that is a constant string.
8. (Optional) Create a local variable called `my_local_variable` that concatenates `my_string_variable` and the string `" - Local Variable"`.
9. (Optional) Create a local variable called `my_list_length` that calculates the length of `my_list_variable`.