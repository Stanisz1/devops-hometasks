resource "kubernetes_ingress_v1" "wcgingress" {
  # depends_on = [
  #   kubernetes_service_v1.wcgservice
  # ]
  metadata {
    name = var.ingress.name
  }

  spec {
    ingress_class_name = var.ingress.name
    rule {
      host = var.ingress.host
      http {
        path {
          backend {
            service {
              name = var.service.name
              port {
                number = var.ingress.port
              }
            }
          }
          path      = var.ingress.path
          path_type = var.ingress.path_type
        }
      }
    }
  }
}
