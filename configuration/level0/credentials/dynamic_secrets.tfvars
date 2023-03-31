
# Store output attributes into keyvault secret
# Those values are used by the rover to connect the current remote state and
# identity the lower level
dynamic_keyvault_secrets = {
  cred_ea_account_owner = { # ea account owner
    account_owner_username = {
      secret_name = "account-owner-username"
      value       = ""
    }
    account_owner_password = {
      secret_name = "account-owner-password"
      value       = ""
    }
    tenant_id = {
      secret_name = "tenant-id"
      value       = "93fd845d-59f1-4a5d-8b3a-0c6b4b0c4abd" # caftest1.onmicrosoft.com Tenant
    }
  }

}