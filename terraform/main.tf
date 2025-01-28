module "k8s" {
  cluster-name = "psi-test-cluster"
  gcloud_region = "europe-west10"
  gcloud_project = "gp-dssi"
  gcloud_machine_type_main = "e2-standard-4"
  gcloud_zones = ["europe-west10-a"]
  gcloud_node_count = 3
  source = "git::https://github.com/gespel/gprefarchinfra.git//terraform/k8s?ref=main"
}

module "postgres" {
    cluster-name = "patroni-test"
    gcloud_region = "europe-west10"
    gcloud_project = "gp-dssi"
    gcloud_machine_type_main = "e2-standard-4"
    gcloud_machine_type_etcd = "e2-standard-2"
    gcloud_zones = ["europe-west10-a", "europe-west10-a", "europe-west10-a"]
    source = "git::https://github.com/gespel/gprefarchinfra.git//terraform/postgres?ref=main"
}
