locals {
  safe_files = fileset("${path.module}/safes", "*.yaml")

  safes = {
    for file in local.safe_files :
    file => yamldecode(file("${path.module}/safes/${file}"))
  }
}

module "safe" {
  for_each = local.safes
  source   = "./modules/safe"
  safe     = each.value
}
