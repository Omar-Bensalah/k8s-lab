# Output list of node IPs for reference
output "node_ips" {
  value = [for i in range(var.vm_count) : "192.168.56.${100 + i}"]
}

# Render a dynamic Ansible inventory from a template file
output "ansible_inventory" {
  value = [
    for i in range(var.vm_count) : {
      name = "node-${i + 1}"
      ip   = "192.168.56.${100 + i + 1}"
    }
  ]
}