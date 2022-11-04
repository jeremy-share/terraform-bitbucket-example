resource "bitbucket_repository" "repo" {
  owner       = var.owner
  name        = var.name
  description = var.description
}

# === STAGING ===============================================================
resource "bitbucket_deployment" "staging" {
  repository = bitbucket_repository.repo.id
  name       = "staging"
  stage      = "Staging"
}
resource "bitbucket_deployment_variable" "staging_code" {
  deployment = bitbucket_deployment.staging.id
  key        = "CODE"
  value      = "staging"
  secured    = false
}

# === PRODUCTION ============================================================
resource "bitbucket_deployment" "production" {
  repository = bitbucket_repository.repo.id
  name       = "production"
  stage      = "Production"
}
resource "bitbucket_deployment_variable" "production_code" {
  deployment = bitbucket_deployment.production.id
  key        = "CODE"
  value      = "prod"
  secured    = false
}
