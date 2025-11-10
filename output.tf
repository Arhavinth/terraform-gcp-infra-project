output "vm_ips" {
  value = module.compute.vm_ip
}

output "db_private_ip" {
  value = module.database.private_ip
}

output "storage_bucket" {
  value = module.storage_bucket.storage_bucket
}

