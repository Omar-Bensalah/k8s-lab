terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}
# Create multiple VMs (control from control node)
resource "virtualbox_vm" "k8s_nodes" {
  count      = var.node_count

  # VM name will be k8s-node-0, k8s-node-1, etc.
  name       = "k8s-node-${count.index}"

  # The base image to use – Vagrant will download this automatically
  image      = var.vm_image

  # CPU and memory allocation
  cpus       = var.vm_cpus
  memory     = var.vm_memory

  # Attach a host-only network interface (e.g., vboxnet0)
  network_adapter {
    type           = "hostonly"
    host_interface = var.host_interface
  }

  # Set the SSH user so Ansible can later connect
  ssh_username = var.vm_user
  ssh_key_path = var.ssh_private_key_path
}
