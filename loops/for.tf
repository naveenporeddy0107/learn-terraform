variable "fruits"{
  default={
    apple=10
    orange=20
    banana=30
  }
}

provisioner "local-exec" {
  count=length(var.fruits)
}

output "total" {

  value= "${var.fruits[count.index]}"
}