resource "helm_release" "podinfo" {
  chart = "podinfo"
  repository = "https://stefanprodan.github.io/podinfo"
  name  = "podinfo"
  max_history = 3
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}