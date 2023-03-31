#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "Azure subscription 1"
    create_alias    = false
    subscription_id = "32fd7f83-a8c8-4932-84e7-46f33936d970"
  }
  identity = {
    name            = "Azure subscription 1"
    create_alias    = false
    subscription_id = "32fd7f83-a8c8-4932-84e7-46f33936d970"
  }
  connectivity = {
    name            = "Azure subscription 1"
    create_alias    = false
    subscription_id = "32fd7f83-a8c8-4932-84e7-46f33936d970"
  }
  management = {
    name            = "Azure subscription 1"
    create_alias    = false
    subscription_id = "32fd7f83-a8c8-4932-84e7-46f33936d970"
  }
}