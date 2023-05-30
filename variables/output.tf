output "boolean"{
  value=var.boolean
}
output "float"{
  value=var.integer
}

output "resultofsingle"{
  value=var.single
}
output "output_list" {
  value="${var.list[1]} >>>> ${var.list[2]} >>>> ${var.list[3]}"
}
output "dictvalue"{
  value="${var.dictionary["age"]} and name of the person: ${var.dictionary["name"]}"
}