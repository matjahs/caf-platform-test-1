
# Management
Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t caftest1.onmicrosoft.com -s 32fd7f83-a8c8-4932-84e7-46f33936d970

rover \
  --impersonate-sp-from-keyvault-url https://ms-caf-kv-mg-wdr.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/management \
  -tfstate_subscription_id 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -target_subscription 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -tfstate management.tfstate \
  -env matjahs \
  -level level1 \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

[Deploy Identity](../../level1/identity/readme.md)
