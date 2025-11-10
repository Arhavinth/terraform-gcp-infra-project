variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "vm_machine_type" {
  type    = string
  default = "e2-micro"
}

variable "db_name" {
  type    = string
  default = "app-db"
}

variable "db_user" {
  type    = string
  default = "admin"
}

variable "db_password" {
  type = string
}

variable "storage_bucket_name" {
  type    = string
  default = "final-bucket-889911"
}


