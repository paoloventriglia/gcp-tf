module "vpc" {
    source = "modules/vpc"
    project_id = "${var.project_id}"
    network_name = "${var.network_name}"
    subnets = "${var.subnets}"
    secondary_ranges = "${var.secondary_ranges}"
}
