resource "aci_rest_managed" "infraCPMtuPol" {
  dn         = "uni/infra/CPMtu"
  class_name = "infraCPMtuPol"
  content = {
    interfacePref = var.interface_preference
  }
}