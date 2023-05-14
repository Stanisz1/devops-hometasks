resource "kubernetes_service_v1" "wcgservice" {
  depends_on = [
    kubernetes_deployment_v1.wcgdep
  ]
  metadata {
    name = var.service.name
  }
  spec {
    selector = local.labels

    port {
      port        = var.service.port
      target_port = var.service.target_port
    }
  }
}
