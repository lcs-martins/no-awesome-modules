# commons
project = "projeto"
zone = "us-central"
region  = "us-central1"
env = "test" #prod, homl, test 

# vpc
network {
    network = {
      subnet-ip-range = "10.9.0.0/24"
      # secondary_ip_range = [ {} ]
      secondary_ip_range = [
        {
          range_name = "default-range"
          ip_cidr_range = "10.11.0.0/24"
        },
        { 
          range_name = "test-range"
          ip_cidr_range = "10.12.0.0/24"
        }#, ...
      ]
    }
}