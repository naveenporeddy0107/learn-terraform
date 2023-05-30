variable "single" {
  default="learning terraform"
}

output "resultofsingle"{
  value=var.single
}

variable "list"{
  default =["naveen","rakshitha",10,"kruthika"]
}

output "output_list" {
  value="${var.list[1]} >>>> ${var.list[2]} >>>> ${var.list[3]}}"
}