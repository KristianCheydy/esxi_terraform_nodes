resource "esxi_guest" "vm" {
  guest_name = var.vm_name
  numvcpus = var.numvcpus
  memsize = var.memsize
  disk_store = var.disk_store
  ovf_source = var.ovf_file

  network_interfaces {
    virtual_network = var.virtual_network
  }
  ovf_properties {
    key   = "user-data"
    value = base64encode(templatefile("${path.module}/userdata.tftpl", {
      hostname    = var.vm_name
      ip_addr     = var.ip_addr
      vm_password = var.vm_password
    }))
  }

  ovf_properties {
    key   = "password"
    value = var.vm_password
  }

}
