terragrunt = {
  terraform {
    source = "git::git@github.com:paoloventriglia/gcp-tf-modules.git//modules/lb-http?ref=master"
  }
}

// HTTP Load balanacer

project = "corebox-001"
name = "corebox-001-lb"

backends = {
    "0" = [
      { group = "corebox-mig01-usc1f" },
    ],
  }
backend_params    = [
    # health check path, port name, port number, timeout seconds.
    "/,http,80,10"
  ]