#!/bin/bash
cd terraform
terraform destroy -auto-approve
rm -f terraform.tfstate*
rm -f .terraform.lock.hcl
rm -rf .terraform
rm -f ../ansible/inventory.ini
rm -f ../terraform/join_command.sh
echo "Cleanup complete!"
