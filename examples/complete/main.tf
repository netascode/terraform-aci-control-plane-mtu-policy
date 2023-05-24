module "infraCPMtuPol" {
  source  = "netascode/apic-control-plane-mtu-policy/aci"
  version = ">= 0.1.0"

  control_plane_mtu_policy = 9000
}