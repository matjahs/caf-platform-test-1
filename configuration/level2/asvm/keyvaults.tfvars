
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "matjahs"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "6c018ac5-9ea0-48cb-9907-a5cc6754e947"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "a8dd2125-8867-4feb-b7fa-f76b82d6c02b"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "662b216d-f798-494a-8b88-f89ae703fd6a"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "matjahs"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "6c018ac5-9ea0-48cb-9907-a5cc6754e947"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "a8dd2125-8867-4feb-b7fa-f76b82d6c02b"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "662b216d-f798-494a-8b88-f89ae703fd6a"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
