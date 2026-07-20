variable "esxi_hostname" {
  type = string
  description = "hostname"
  sensitive = true
}

variable "esxi_hostport" {
  default = "22"
}

variable "esxi_hostssl" {
  default = "443"
}

variable "esxi_username" {
  type = string
  description = "esxi_username"
  sensitive = true
}

variable "esxi_password" {
  type = string
  description = "esxi_pass"
  sensitive = true
}

variable "vm_subnet" {
  default = "192.168.20.0/19"
}

variable "vm_start_ip_offset" {
  type = number
  default = 108
}

variable "vmGateway" {
  type = string
  description = "Gateway" 
  
}

variable "nameserver" {
  default = "8.8.8.8"
}

variable "vm_hostname" {
  default = "vmtest01"
}

variable "vm_password" {
  type = string
  description = "VM Pass"
  sensitive = true
}
variable "ovf_file" {
  type = string
  description = "Path to ovf"
}
