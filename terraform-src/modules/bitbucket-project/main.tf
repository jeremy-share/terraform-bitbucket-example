resource "bitbucket_project" "project" {
  owner       = var.owner
  name        = var.name
  key         = var.key
  description = var.description
  is_private  = true
}
