locals {
  # Load safes from YAML file
  safes = yamldecode(file("${path.module}/safes.yaml")).safes
}

module "safe" {
  source = "./modules/safe"

  # Create one module instance per safe
  for_each = { for s in local.safes : s.name => s }

  safe_name   = each.value.name
  description = each.value.description
}
