/*
variable "fruits"{
  default={
    apple=10
    orange=20
    banana=30
  }
}
*/

variable "fruits"{
  default=["apple","orange"]

}
resource "null_resource" "null" {
  count = length(var.fruits)
  provisioner "local-exec" {
    command="echo ${var.fruits[count.index]}"
  }
}

/*output "total" {

  //value= "${var.fruits[count.index]}"

  value= "${var.fruits[count.index]}"
}*/
