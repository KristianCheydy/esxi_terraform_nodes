variable "esxi_hostname" {
  type = string
  description = "hostname"
  sensetive = true
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
  sensetive = true
}

variable "esxi_password" {
  type = string
  description = "esxi_pass"
  sensetive = true
}

variable "vmIP" {
  default = "192.168.20.108/19"
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
  sensetive = true

variable "ovf_file" {
  type = string
  description = "Path to ovf"
}
