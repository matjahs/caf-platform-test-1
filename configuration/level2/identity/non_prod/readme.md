
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t caftest1.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://ms-caf-kv-id-enf.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/identity/non_prod \
  -tfstate_subscription_id 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -target_subscription 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -tfstate identity_level2_non_prod.tfstate \
  -env matjahs \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/identity_level2_non_prod.tfstate.tfplan \
  -a plan && \
rover \
  --impersonate-sp-from-keyvault-url https://ms-caf-kv-id-enf.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/identity/non_prod \
  -tfstate_subscription_id 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -target_subscription 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -tfstate identity_level2_non_prod.tfstate \
  -env matjahs \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/identity_level2_non_prod.tfstate.tfplan \
  -a apply

```

