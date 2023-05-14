resource "github_repository_file" "this" {
  for_each            = fileset("${path.module}/", "*.tf")
  repository          = "devops-hometasks"
  branch              = "master"
  file                = "13-terraform/${each.value}"
  content             = file("${path.module}/${each.value}")
  overwrite_on_create = true
}
