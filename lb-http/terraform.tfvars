terragrunt = {
  terraform {
    source = "git::git@github.com:paoloventriglia/gcp-tf-modules.git//modules/lb-http?ref=master"
  }
}

// HTTP Load balanacer