variable "owner" {
  description = "Repo owner"
  type = string
}
variable "name" {
  description = "Repo name"
  type = string
}
variable "description" {
  description = "Repo description"
  type = string
  default = ""
}
variable "project_key" {
  description = "Repo Key"
  type = string
}
