variable "single" {
  default = "learning terraform"
}

variable "boolean" {
  default = true
}

variable "integer" {
  default = 10.5
}


variable "list" {
  default = ["naveen", "rakshitha", 10, "kruthika"]
}


variable "dictionary" {
  default = {
    "name" = "reddy"
    "age"  = 41
  }
}

variable "env" {}

