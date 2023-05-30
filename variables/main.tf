variable "single" {
  default="learning terraform"
}

variable "boolean" {
  default=true
}

variable "integer" {
  default=10.5
}

output "boolean"{
  value=var.boolean
}
output "float"{
  value=var.integer
}

output "resultofsingle"{
  value=var.single
}

variable "list"{
  default =["naveen","rakshitha",10,"kruthika"]
}

output "output_list" {
  value="${var.list[1]} >>>> ${var.list[2]} >>>> ${var.list[3]}"
}

variable "dictionary"
{
  default ={
    name="reddy"
    age=34
  }
}

output "dictvalue"{
  value=var.dictionary["age"]
}