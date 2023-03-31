
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription Azure subscription 1 with the user matjah@caftest1.onmicrosoft.com
rover login -t caftest1.onmicrosoft.com -s 32fd7f83-a8c8-4932-84e7-46f33936d970

rover \
  --impersonate-sp-from-keyvault-url https://ms-caf-kv-scp-rpi.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -tfstate platform_subscriptions.tfstate \
  -env matjahs \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan && \
rover \
  --impersonate-sp-from-keyvault-url https://ms-caf-kv-scp-rpi.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 32fd7f83-a8c8-4932-84e7-46f33936d970 \
  -tfstate platform_subscriptions.tfstate \
  -env matjahs \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a apply

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)
