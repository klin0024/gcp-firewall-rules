project_id = "gcp-expert-sandbox-allen"
network_name = "demo"
rules = [
{
  name = "allow-80"
  direction = "INGRESS"
  priority = 100
  ranges = ["192.168.0.0/24"]
  target_tags = ["tcp80"]
  allow_protocol = "tcp"
  allow_ports = ["80"] 
},
{
  name = "allow-443"
  direction = "INGRESS"
  priority = 200
  ranges = ["172.16.0.0/24"]
  target_tags = ["tcp443"]
  allow_protocol = "tcp"
  allow_ports = ["443"] 
}
]