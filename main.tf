resource "aci_rest_managed" "infraCPMtuPol" {
  dn         = "uni/infra/CPMtu"
  class_name = "infraCPMtuPol"
  content = {
    CPMtu = var.ctrl_plane_mtu_policy
  }
}