# Inventory file for Ansible

[master]
${ips[0]} ansible_user=${user}

[workers]
%{ for ip in slice(ips, 1, length(ips)) ~}
${ip} ansible_user=${user}
%{ endfor ~}