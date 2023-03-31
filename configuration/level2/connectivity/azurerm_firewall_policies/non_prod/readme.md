
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t caftest1.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://ms-caf-kv-co-bxa.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/azurerm_firewall_policies/non_prod \
  -tfstate_subscription_id 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -target_subscription 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -tfstate connectivity_firewall_policies_non_prod.tfstate \
  -env matjahs \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_firewall_policies_non_prod.tfstate.tfplan \
  -a plan

```

