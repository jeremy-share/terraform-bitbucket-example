module "project-squad-a" {
  source = "./modules/bitbucket-project"
  name = "Squad A"
  key = "SQUAD_A"
  owner = var.owner
}

module "repo-ahti" {
  source = "./modules/bitbucket-repo-simple"
  name = "Ahti service"
  owner = var.owner
  project_key = module.project-squad-a.project_key
}

module "repo-amandarusso" {
  source = "./modules/bitbucket-repo-simple"
  name = "Amandarusso service"
  owner = var.owner
  project_key = module.project-squad-a.project_key
}
