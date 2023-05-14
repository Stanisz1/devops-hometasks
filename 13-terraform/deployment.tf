resource "kubernetes_deployment_v1" "wcgdep" {

  metadata {
    name = var.deployment.name
    labels = {
      test = var.lables_app_name
    }
  }

  spec {
    replicas = var.deployment.replica_number

    selector {
      match_labels = local.labels
    }

    template {
      metadata {
        labels = local.labels
      }
      spec {
        container {
          image             = var.deployment.container_image
          name              = var.deployment.container_name
          image_pull_policy = "Always"
        }
      }
    }
  }
}
