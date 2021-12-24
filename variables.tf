variable "project_id" {
  description = "Project id of the project that holds the network."
}

variable "network_name" {
  description = "Name of the network this set of firewall rules applies to."
}

variable "rules" {
  description = "List of custom rule definitions (refer to variables file for syntax)."
  default     = []
  type = list(object({
    name                    = string
    direction               = string
    priority                = number
    ranges                  = list(string)
    target_tags             = list(string)
    allow_protocol          = string
    allow_ports             = list(string)    
  
  }))
}
