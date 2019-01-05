provider "google" {
  credentials = "${file("tf-account-cred.json")}"
  project     = "corebox-001"
  region      = "us-central1"
}