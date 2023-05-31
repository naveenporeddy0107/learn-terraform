/*
variable "fruits"{
  default={
    apple=10
    orange=20
    banana=30
  }
}
*/

/*variable "fruits"{
  default=["apple","orange"]

}*/
resource "null_resource" "null" {
  for_each = var.fruits
  provisioner "local-exec" {
    command="echo ${each.key}.....${each.value}"
  }
}

/*output "total" {

  //value= "${var.fruits[count.index]}"

  value= "${var.fruits[count.index]}"
}*/
