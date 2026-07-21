output "ip" {
  value = var.ip_address
}

output "vm_id" {
  value = esxi_guest.vm.id
}
