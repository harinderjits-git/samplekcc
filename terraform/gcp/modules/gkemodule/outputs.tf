output "id" {
  value = local.consumable.id
}

output "k8sversion" {
  value = google_container_cluster.cluster.master_version
}

output "gkename" {
  value = google_container_cluster.cluster.name
}

output "igs" {
  value = google_container_node_pool.private-np-1.instance_group_urls
}


output "connect_command" {
  value = "gcloud container clusters get-credentials ${google_container_cluster.cluster.name} --region ${var.region} --project ${var.project}"
  #gcloud container clusters get-credentials sampleappproddrgkeue2 --region us-east4 --project <project_id>

}