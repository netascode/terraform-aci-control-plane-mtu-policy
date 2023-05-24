terraform {
  required_version = ">= 1.0.0"

  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "CiscoDevNet/aci"
      version = ">=2.0.0"
    }
  }
}

module "main" {
  source = "../.."

  ctrl_plane_mtu_policy = 7000
}

data "aci_rest_managed" "infraCPMtuPol" {
  dn = "uni/infra/CPMtu"

  depends_on = [module.main]
}

resource "test_assertions" "infraCPMtuPol" {
  component = "infraCPMtuPol"

  equal "interfacePref" {
    description = "interfacePref"
    got         = data.aci_rest_managed.infraCPMtuPol.content.CPMtu
    want        = "7000"
  }
}