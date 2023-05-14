variable "tf_token" {}

variable "files" {
  default = [
    "deployment.tf",
    "service.tf",
    "ingress.tf",
    "provider.tf",
    "locals.tf",
    "provider.tf",
    "github/provider.tf",
    "github/repo.tf",
    "github/variables.tf"
  ]
}
