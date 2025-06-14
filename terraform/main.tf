terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}
resource "virtualbox_vm" "k8s_nodes" {
  count = var.vm_count
  name  = "node-${count.index + 1}"
  image = var.vm_image
  cpus  = var.vm_cpus
  memory = var.vm_memory

  network_adapter {
    type           = "hostonly"
    host_interface = var.hostonly_interface
  }
  
}
