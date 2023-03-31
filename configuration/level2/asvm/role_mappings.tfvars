
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "662b216d-f798-494a-8b88-f89ae703fd6a", // caf_platform_maintainers
              "6c018ac5-9ea0-48cb-9907-a5cc6754e947"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "662b216d-f798-494a-8b88-f89ae703fd6a", // caf_platform_maintainers
              "6c018ac5-9ea0-48cb-9907-a5cc6754e947"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "662b216d-f798-494a-8b88-f89ae703fd6a", // caf_platform_maintainers
              "6c018ac5-9ea0-48cb-9907-a5cc6754e947"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "6c018ac5-9ea0-48cb-9907-a5cc6754e947" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "662b216d-f798-494a-8b88-f89ae703fd6a", // caf_platform_maintainers
              "6c018ac5-9ea0-48cb-9907-a5cc6754e947"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "6c018ac5-9ea0-48cb-9907-a5cc6754e947" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
