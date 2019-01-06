terragrunt = {
  terraform {
    source = "git::git@github.com:paoloventriglia/gcp-tf-modules.git//modules/lb-http?ref=master"
   }
  remote_state {
    backend = "local"
    config = { path = "/home/vagrant/tfstate/lb-http/terraform.tfstate" }
   }
}
data "terraform_remote_state" "mig" {
  backend = "local"
  config { path = "/home/vagrant/tfstate/mig/terraform.tfstate"
  }
}

// HTTP Load balanacer

project = "corebox-001"
name = "corebox-001-lb"
target_tags = ["allow-http", "allow-service"]
backends = {
    "0" = [
      { group =  "${data.terraform_remote_state.mig.instance_group}"
 },
    ],
  }
backend_params    = [
    # health check path, port name, port number, timeout seconds.
    "/,http,80,10"
  ]
