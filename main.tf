resource "google_vertex_ai_persistent_resource" "vertex_ai_persistent_resources" {
  for_each = var.vertex_ai_persistent_resources

  name               = each.value.name
  deletion_policy    = each.value.deletion_policy
  display_name       = each.value.display_name
  labels             = each.value.labels
  location           = each.value.location
  network            = each.value.network
  project            = each.value.project
  reserved_ip_ranges = each.value.reserved_ip_ranges

  dynamic "resource_pools" {
    for_each = each.value.resource_pools
    content {
      dynamic "autoscaling_spec" {
        for_each = resource_pools.value.autoscaling_spec != null ? [resource_pools.value.autoscaling_spec] : []
        content {
          max_replica_count = autoscaling_spec.value.max_replica_count
          min_replica_count = autoscaling_spec.value.min_replica_count
        }
      }
      dynamic "disk_spec" {
        for_each = resource_pools.value.disk_spec != null ? [resource_pools.value.disk_spec] : []
        content {
          boot_disk_size_gb = disk_spec.value.boot_disk_size_gb
          boot_disk_type    = disk_spec.value.boot_disk_type
        }
      }
      id = resource_pools.value.id
      machine_spec {
        accelerator_count = resource_pools.value.machine_spec.accelerator_count
        accelerator_type  = resource_pools.value.machine_spec.accelerator_type
        machine_type      = resource_pools.value.machine_spec.machine_type
      }
      replica_count = resource_pools.value.replica_count
    }
  }

  dynamic "encryption_spec" {
    for_each = each.value.encryption_spec != null ? [each.value.encryption_spec] : []
    content {
      kms_key_name = encryption_spec.value.kms_key_name
    }
  }

  dynamic "psc_interface_config" {
    for_each = each.value.psc_interface_config != null ? [each.value.psc_interface_config] : []
    content {
      dynamic "dns_peering_configs" {
        for_each = psc_interface_config.value.dns_peering_configs != null ? psc_interface_config.value.dns_peering_configs : []
        content {
          domain         = dns_peering_configs.value.domain
          target_network = dns_peering_configs.value.target_network
          target_project = dns_peering_configs.value.target_project
        }
      }
      network_attachment = psc_interface_config.value.network_attachment
    }
  }

  dynamic "resource_runtime_spec" {
    for_each = each.value.resource_runtime_spec != null ? [each.value.resource_runtime_spec] : []
    content {
      dynamic "service_account_spec" {
        for_each = resource_runtime_spec.value.service_account_spec != null ? [resource_runtime_spec.value.service_account_spec] : []
        content {
          enable_custom_service_account = service_account_spec.value.enable_custom_service_account
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

