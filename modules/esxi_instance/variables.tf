variable "vm_name" {
  type = string
  description = "Name of virtual machine"
}

variable "ram_mb" {
  type = number
  default = 2048
  description = "Size of ram in MB"
}

variable "ip_address" {
  type = string
}

