
project_id = "corebox-001"
network_name = "corebox-001-vpc"
subnets = [
        {
            subnet_name = "public-app"
            subnet_ip = "10.0.1.0/24"
            subnet_region = "us-west1"
        },
        {
            subnet_name = "private-app"
            subnet_ip = "10.0.2.0/24"
            subnet_region = "us-west1"
            subnet_private_access = "true"
            subnet_flow_logs = "true"
        },
    ]
secondary_ranges = {
      public-app = [
        {
          range_name = "private-app-secondary"
          ip_cidr_range = "192.168.1.0/24"
        }
      ]
      private-app = [
        {
          range_name = "private-app-secondary"
          ip_cidr_range = "192.168.2.0/24"
        }
      ]


    }
