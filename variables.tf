variable "vertex_ai_persistent_resources" {
  description = <<EOT
Map of vertex_ai_persistent_resources, attributes below
Required:
    - name
    - resource_pools (block):
        - autoscaling_spec (optional, block):
            - max_replica_count (optional)
            - min_replica_count (optional)
        - disk_spec (optional, block):
            - boot_disk_size_gb (optional)
            - boot_disk_type (optional)
        - id (optional)
        - machine_spec (required, block):
            - accelerator_count (optional)
            - accelerator_type (optional)
            - machine_type (optional)
        - replica_count (optional)
Optional:
    - deletion_policy
    - display_name
    - labels
    - location
    - network
    - project
    - reserved_ip_ranges
    - encryption_spec (block):
        - kms_key_name (required)
    - psc_interface_config (block):
        - dns_peering_configs (optional, block):
            - domain (required)
            - target_network (required)
            - target_project (required)
        - network_attachment (optional)
    - resource_runtime_spec (block):
        - service_account_spec (optional, block):
            - enable_custom_service_account (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name               = string
    deletion_policy    = optional(string)
    display_name       = optional(string)
    labels             = optional(map(string))
    location           = optional(string)
    network            = optional(string)
    project            = optional(string)
    reserved_ip_ranges = optional(list(string))
    resource_pools = list(object({
      autoscaling_spec = optional(object({
        max_replica_count = optional(string)
        min_replica_count = optional(string)
      }))
      disk_spec = optional(object({
        boot_disk_size_gb = optional(number)
        boot_disk_type    = optional(string)
      }))
      id = optional(string)
      machine_spec = object({
        accelerator_count = optional(number)
        accelerator_type  = optional(string)
        machine_type      = optional(string)
      })
      replica_count = optional(string)
    }))
    encryption_spec = optional(object({
      kms_key_name = string
    }))
    psc_interface_config = optional(object({
      dns_peering_configs = optional(list(object({
        domain         = string
        target_network = string
        target_project = string
      })))
      network_attachment = optional(string)
    }))
    resource_runtime_spec = optional(object({
      service_account_spec = optional(object({
        enable_custom_service_account = bool
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.vertex_ai_persistent_resources : (
        length(v.resource_pools) >= 1
      )
    ])
    error_message = "Each resource_pools list must contain at least 1 items"
  }
}

