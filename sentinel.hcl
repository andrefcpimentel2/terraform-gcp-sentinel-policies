module "tfplan-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}


policy "gcp-instance-size" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/cloud-agnostic/allowed-resources.sentinel"
  enforcement_level = "hard-mandatory"
}

    
policy "enforce-mandatory-labels" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/gcp/enforce-mandatory-labels.sentinel"
  enforcement_level = "hard-mandatory"
}
