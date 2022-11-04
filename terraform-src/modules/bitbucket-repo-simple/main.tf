resource "bitbucket_repository" "repo" {
  owner = var.owner
  name  = var.name
  description = var.description
}
