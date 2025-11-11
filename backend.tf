terraform {

required_providers {

google = {

source = "hashicorp/google"

version = ">= 5.0"
}
}

backend "gcs" {
bucket = "YOUR-BUCKET-NAME"
prefix = "terraform/state"
}
}
