# Number of nodes: 1 master + 2 workers
variable "vm_count" {
  default = 3
}

# Vagrant box to use for the VMs
variable "vm_image" {
  default = "https://app.vagrantup.com/ubuntu/boxes/jammy64/versions/20180903.0.0/providers/virtualbox.box"
}

variable "hostonly_interface" {
  description = "Name of the VirtualBox host-only interface"
  type        = string
  default     = "vboxnet0"
}

# CPU cores per VM
variable "vm_cpus" {
  default = 2
}

# Memory (MB) per VM
variable "vm_memory" {
  default = 2048
}

# SSH username used by Ansible
variable "vm_user" {
  default = "vagrant"
}

# Path to the SSH private key used for Ansible
variable "ssh_private_key_path" {
  default = "~/.vagrant.d/insecure_private_key"
}

# Host-only network interface (must exist in VirtualBox)
variable "host_interface" {
  default = "vboxnet0"
}