# Terraform Bitbucket example

Terraform Bitbucket example. I do not spend much time in Bitbucket so maybe be bugs ect!

## Details
See Makefile for an example of how to run. You probably do not want to use tfvars files in CI/CD

## Credentials / settings
For local testing, `cp terraform.tfvars.dist terraform.tfvars` and set vars in it. See `Makefile` for commands

* Username: https://bitbucket.org/account/settings/#read-only-username
* Password: Generate an APP password https://bitbucket.org/account/settings/app-passwords/

Also change owner default in `terraform-src/vars.tf.tf`
