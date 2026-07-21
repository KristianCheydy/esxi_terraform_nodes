resource "esxi_guest" "vm" {
  guest_name = var.vm_name
  mem_size = var.ram_mb


}
