/*module "k8s" {
  source = "git::https://github.com/gespel/gprefarchinfra.git//tf/k8s?ref=main"
}*/
module "postgres" {
    cluster-name = "patroni-test"
    gcloud_region = "europe-west10"
    gcloud_project = "gp-dssi"
    gcloud_machine_type_main = "e2-standard-4"
    gcloud_machine_type_etcd = "e2-standard-2"
    gcloud_zones = ["europe-west10-a", "europe-west10-b", "europe-west10-c"]
    source = "git::https://github.com/gespel/gprefarchinfra.git//tf/postgres?ref=main"
}
