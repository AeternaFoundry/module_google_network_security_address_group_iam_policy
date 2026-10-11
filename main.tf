resource "google_network_security_address_group_iam_policy" "network_security_address_group_iam_policies" {
  for_each = var.network_security_address_group_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  location    = each.value.location
  project     = each.value.project
}

