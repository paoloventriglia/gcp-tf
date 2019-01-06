terragrunt = {
  terraform {
    source = "git::git@github.com:paoloventriglia/gcp-tf-modules.git//modules/lb-http?ref=master"
   }
  remote_state {
    backend = "local"
    config = { path = "/home/vagrant/tfstate/terraform.tfstate" }
   }
}  

// HTTP Load balanacer

project = "corebox-001"
name = "corebox-001-lb"
target_tags = ["allow-http", "allow-service"]
backends = {
    "0" = [
      { group = "" },
    ],
  }
backend_params    = [
    # health check path, port name, port number, timeout seconds.
    "/,http,80,10"
  ]
