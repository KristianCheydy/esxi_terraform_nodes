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


module "nodes" {
  
  source = "./modules/esxi_instance"
  count      = var.vm_count

  vm_name = "node-0${count.index + 1}"
  ip_addr = cidrhost(var.vm_subnet, var.vm_start_ip_offset + count.index)
  disk_store = "datastore"
  ovf_file = var.ovf_file
  vm_password = var.vm_password
  memsize = var.memsize
  numvcpus = var.numvcpus
}
