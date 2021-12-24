locals {

  rules = [
    for r in var.rules :
    {
      name                    = r.name
      description             = null
      direction               = r.direction
      priority                = r.priority
      ranges                  = r.ranges
      source_tags             = null
      source_service_accounts = null
      target_tags             = r.target_tags
      target_service_accounts = null
      allow = [{
        protocol = r.allow_protocol
        ports    = r.allow_ports
      }]
      deny = []
      log_config = null
    }
  ]
}

module "firewall_rules" {
  source       = "./firewall-rules"
  project_id   = var.project_id
  network_name = var.network_name

  rules = local.rules

}