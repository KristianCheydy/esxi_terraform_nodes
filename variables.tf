variable "esxi_hostname" {
  type        = string
  description = "hostname"
  sensitive   = true
}

variable "esxi_hostport" {
  type    = string
  default = "22"
}

variable "esxi_hostssl" {
  type    = string
  default = "443"
}

variable "esxi_username" {
  type        = string
  description = "esxi_username"
  sensitive   = true
}

variable "esxi_password" {
  type        = string
  description = "esxi_pass"
  sensitive   = true
}

variable "vm_count" {
  type = number
  default = 2
}

variable "vm_subnet" {
  type    = string
  default = "192.168.20.0/19"
}

variable "vm_start_ip_offset" {
  type    = number
  default = 108
}


variable "vm_password" {
  type        = string
  description = "VM Pass"
  sensitive   = true
}
variable "ovf_file" {
  type        = string
  description = "Path to ovf"
}
