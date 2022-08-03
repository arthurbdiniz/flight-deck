seed: init plan apply

clear-seed:
	python helpers/clear-seed.py

asdf:
	asdf plugin add terraform
	asdf install

init:
	terraform init

plan:
	terraform plan

apply:
	terraform apply -lock=false -auto-approve
	rm -rf .terraform.lock.hcl terraform.tfstate .terraform