variable "vm_name" {
  type = string
  description = "Name of virtual machine"
}

variable "numvcpus" {
  type = number
  default = 2
  description = "Cpu count"
}

variable "memsize" {
  type = number
  default = 2048
}

variable "virtual_network" {
  type = string
  default = "VM Network"
}

variable "ip_addr" {
  type = string
}

variable "disk_store" {
  type = string
}

variable "ovf_file" {
  type = string
}

variable "vm_password" {
  type = string
  sensitive = true
}
