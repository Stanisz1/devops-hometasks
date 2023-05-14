resource "github_repository_file" "this" {
  for_each            = fileset("${path.module}/../", "*.tf")
  repository          = "devops-hometasks"
  branch              = "master"
  file                = "13-terraform/${each.value}"
  content             = file("${path.module}/../${each.value}")
  overwrite_on_create = true
}

resource "github_repository_file" "fo" {
  for_each            = fileset("${path.module}/../github", "*.tf")
  repository          = "devops-hometasks"
  branch              = "master"
  file                = "13-terraform/github/${each.value}"
  content             = file("${path.module}/../github/${each.value}")
  overwrite_on_create = true
}
