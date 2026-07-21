terraform {
  required_version = ">= 0.12"
}

provider "esxi" {
  esxi_hostname = var.esxi_hostname
  esxi_hostport = var.esxi_hostport
  esxi_hostssl  = var.esxi_hostssl
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}


resource "esxi_guest" "vm_nodes" {
  count      = 2
  guest_name = "node-0${count.index + 1}"
  disk_store = "datastore"
  ovf_source = var.ovf_file
  memsize    = "4096"
  numvcpus   = "2"
  network_interfaces {
    virtual_network = "VM Network"
  }
  guestinfo = {
    "user-data" = base64encode(templatefile("${path.module}/userdata.tftpl", {
      hostname    = "node-0${count.index + 1}"
      ip_addr     = cidrhost(var.vm_subnet, var.vm_start_ip_offset + count.index)
      vm_password = var.vm_password
    }))
    "user-data.encoding" = "base64"
  }
}
