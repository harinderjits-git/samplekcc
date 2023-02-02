module "project" {
  source = "../modules/projectmodule"
  labels = {
    "solutionprovider" = "harinder"
    "solution"         = "sampleapp"
  }
  parent          = "folders/542XXXXXXX39" #replace this
  project_name    = "mysamplooohjcacabd"
  project_id      = "mysamplooohjcacabd12345"
  billing_account = "00E11A-XXXXXX" #replace this
  services        = [
  "sqladmin.googleapis.com"
  ,"cloudkms.googleapis.com"
  ,"containerregistry.googleapis.com"
  ,"container.googleapis.com"
  ,"sql-component.googleapis.com"
  ,"dns.googleapis.com"
  ,"servicenetworking.googleapis.com"
  ,"compute.googleapis.com"
  ,"iam.googleapis.com"
  ,"logging.googleapis.com"
  ,"monitoring.googleapis.com"
  ,"sqladmin.googleapis.com"
  ,"securetoken.googleapis.com"
  ,"cloudfunctions.googleapis.com"
  ,"cloudbuild.googleapis.com"
  ,"cloudapis.googleapis.com"]
}


module "bucket" {
  source = "../modules/bucketmodule"
  labels = {
    solutionprovider = "harinder"
    solution         = "sampleapp"
  }
  project_id = module.project.id
  location   = "US"
  bucketname = "tfstateremote10xxx"
  depends_on = [
    module.project
  ]
}

module "kms" {
  source = "../modules/kmsmodule"
  name = "mysamplooohjcacabd"
  project = "mysamplooohjcacabd12345"
  depends_on = [
    module.project
  ]
  region = "us-central1"
}
