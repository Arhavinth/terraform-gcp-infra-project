variable "instance_count" {
  type    = number
  default = 1
}

variable "subnetwork" {
  type = string
}

variable machine_type { type = string }
variable zone { type = string }
variable network { type = string }

