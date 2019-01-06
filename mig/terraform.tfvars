terragrunt = {
  terraform {
    source = "git::git@github.com:paoloventriglia/gcp-tf-modules.git//modules/mig?ref=master"
  }
  remote_state {
    backend = "local"
    config { path = "/home/vagrant/tfstate/terraform.tfstate" 
    }
  }
}

// GCP Managed Instance Groups

project = "corebox-001"
name = "corebox-mig01-usc1f"
service_port = 80
service_port_name = "http"
autoscaling = true
name_prefix = "mig01-usc1f-template-"
target_tags = ["allow-http", "allow-service"]


