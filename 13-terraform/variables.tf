variable "deployment" {
  description = "Deployment-related variables"
  default = {
    app_name        = "wcg"
    name            = "wcg"
    replica_number  = 1
    container_image = "ghcr.io/stanisz1/wcg:ace07b74b63cab357e1623f20a19ccf99b6ad187"
    container_name  = "wcg"
  }
}

variable "service" {
  description = "Service-related variables"
  default = {
    name        = "wcgservice"
    port        = 8888
    target_port = 8888
  }
}

variable "ingress" {
  description = "Ingress-related variables"
  default = {
    name      = "wcgingress"
    host      = "wcgterraformhw.com"
    port      = 8888
    path      = "/"
    path_type = "Prefix"
  }
}

variable "lables_app_name" {
  default = "wcg"
}
