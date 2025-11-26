locals {
  // Numeric & String functions
  round_up = ceil(4.4)

  round_down = floor(4.4)

  highest_number = max(12, 54, 3)

  lowest_number = min(12, 54, 3)

  highest_number_in_list = max([12, 54, 3, 67, 23]...) // splat operator to unpack list

  lowest_number_in_list = min([12, 54, 3, 67, 23]...)  // splat operator

  ends_with_hello = endswith("Hello, Terraform!", "Terraform!")

  starts_with_hello = startswith("Hello, Terraform!", "Hello")

  format_string = format("Hello, %s!", "World")

  format_list = formatlist("Hello, %s!", ["Jeff", "Steve", "Liam", "Alice"])

  join = join("-", ["foo", "bar", "baz"])

  lowercase = lower("HELLO")

  uppercase = upper("hello")

  replace_string = replace("Hello, Terraform!", "Terraform", "World")

  split = split("-", "foo-bar-baz")

  string_contains = strcontains("Hello, World!", "Wor")

  reverse_string = strrev("hello")

  sub_string = substr("hello world", 1, 4) // "ello"

  title_string = title("hello world") // Hello World
}

locals {
  // All terraform Collection functions
  all_true = alltrue(["true", true])

  any_true = anytrue([true, false])

  coalesce = coalesce("a", "b")

  coalescelist = coalescelist(["a", "b"], ["c", "d"])

  compact = compact(["a", "", "b", null, "c"])

  contains = contains(["a", "b", "c"], "a")

  distinct = distinct(["a", "b", "a", "c", "b"])

  element = element(["a", "b", "c"], 1)

  flatten = flatten([["a", "b"], ["c", "d"], ["e", "f"]])

  index = index(["a", "b", "c"], "b")

  join_collections = join(",", ["a", "b"], ["c", "d"])

  length = length(["a", "b", "c", "d"])

  length_of_string = length("hello")

  keys = keys({a=1, c=2, d=3})

  lookup = lookup({a="ay", b="bee"}, "a", "what?")

  merge = merge({a="b", c="d"}, {e="f", c="z"})

  first_element = one(["hello", "goodbye"])
  
  range = range(1, 4)

  reverse = reverse([1, 2, 3])

  slice = slice(["a", "b", "c", "d"], 1, 3)

  sort = sort(["e", "d", "a", "x"])

  sum = sum([10, 13, 6, 4.5])

  transpose = transpose({"a" = ["1", "2"], "b" = ["2", "3"]})

  values = values({a=3, c=2, d=1})

  zipmap = zipmap(["a", "b"], [1, 2])
}

locals {
  // IP functions
  // cidrhost calculates a full host IP address for a given host number within a given IP network address prefix.
  cidrhost = cidrhost("10.12.112.0/20", 16)

  // cidrnetmask converts an IPv4 address prefix given in CIDR notation into a subnet mask address.
  cidrnetmask = cidrnetmask("172.16.0.0/12")

  // cidrsubnet calculates a subnet address within given IP network address prefix.
  cidrsubnet = cidrsubnet("172.16.0.0/12", 4, 2)

  // cidrsubnets calculates a sequence of consecutive IP address ranges within a particular CIDR prefix.
  cidrsubnets = cidrsubnets("10.1.0.0/16", 4, 4, 8, 4)
}