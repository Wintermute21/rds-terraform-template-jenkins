
terraform {
backend "pg" {
  conn_str="postgres://localhost/terraform_backend?sslmode=disable"
}
}

