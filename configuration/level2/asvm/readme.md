# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t caftest1.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.1

rover \
  --impersonate-sp-from-keyvault-url https://ms-caf-kv-idl0-cps.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -target_subscription 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env matjahs \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

