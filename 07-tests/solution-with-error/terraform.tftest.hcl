provider "random" {}

run "setup" {
  module {
    source = "./"
  }
}

run "test" {
  assert {
    condition     = contains(run.setup.my_list, run.setup.random_string)
    error_message = "Random string is not in the list of strings."
  }

  assert {
    condition = run.setup.random_integer >= 0 && run.setup.random_integer < length(run.setup.my_list)
    error_message = "Random integer is out of bounds. [0, 9]"
  }

  assert {
    condition = length(run.setup.my_list) == 10
    error_message = "My list does not contain 10 items."
  }
}