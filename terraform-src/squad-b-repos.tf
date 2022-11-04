module "project-squad-b" {
  source = "./modules/bitbucket-project"
  name = "Squad B"
  key = "SQUAD_B"
  owner = var.owner
}

module "repo-babben" {
  source = "./modules/bitbucket-repo-staged"
  name = "Babben"
  owner = var.owner
  project_key = module.project-squad-b.project_key
}
