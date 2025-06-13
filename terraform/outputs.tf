# Output list of node IPs for reference
output "node_ips" {
  value = [for vm in virtualbox_vm.k8s_nodes : vm.ipv4_address]
}

# Render a dynamic Ansible inventory from a template file
output "ansible_inventory" {
  value = templatefile("${path.module}/inventory.tpl", {
    ips  = [for vm in virtualbox_vm.k8s_nodes : vm.ipv4_address]
    user = var.vm_user
  })
}