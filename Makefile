local-terraform-init:
	terraform init  -var-file="terraform.tfvars"

local-terraform-plan:
	terraform plan -var-file="terraform.tfvars"

local-terraform-apply:
	terraform apply  -var-file="terraform.tfvars"
