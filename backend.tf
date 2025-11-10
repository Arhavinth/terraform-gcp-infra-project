terraform {

required_providers {

google = {

source = "hashicorp/google"

version = ">= 5.0"
}
}

backend "gcs" {
bucket = "final-bukcet-889911"
prefix = "terraform/state"
}
}
