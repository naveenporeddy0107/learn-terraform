variables "fruits"{
  default={
    apple=10
    orange=20
    banana=30
  }
}

output "total" {

  value= length(count.fruits)
}