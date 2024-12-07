
provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "my-context"
}
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
resource "helm_release" "aks_project" {
  name       = "chart"
  repository = ".."
  chart      = "nginx"
  version    = "1.16.0"
}