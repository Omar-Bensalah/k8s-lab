# Number of nodes: 1 master + 2 workers
variable "node_count" {
  default = 3
}

# Vagrant box to use for the VMs
variable "vm_image" {
  default = "ubuntu/focal64"
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