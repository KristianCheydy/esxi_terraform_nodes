output "ip" {
  value = var.ip_addr
}

output "vm_id" {
  value = esxi_guest.vm.id
}
