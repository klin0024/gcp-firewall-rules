# 使用說明

Var |Type |Value |Description
:---|:---|:---|:---
project_id |string |gcp-expert-sandbox-allen |GCP Project
network_name |string |demo |VPC Name
rules |list(object) | [ <br>{ name = "allow-80" <br> direction = "INGRESS" <br> priority = 100 <br> ranges = ["192.168.0.0/24"] <br> target_tags = ["tcp80"] <br> allow_protocol = "tcp" <br> allow_ports = ["80"] <br> }, <br>{ name = "allow-443" <br> direction = "INGRESS" <br> priority = 200 <br> ranges = ["172.16.0.0/24"] <br> target_tags = ["tcp443"] <br> allow_protocol = "tcp" <br> allow_ports = ["443"] <br>} <br>] | Firewall Rules
