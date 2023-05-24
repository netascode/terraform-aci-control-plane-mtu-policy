module "infraCPMtuPol" {
  source  = "netascode/fabric-control-plane-mtu/aci"
  version = ">= 0.1.0"

  control_plane_mtu = 9000
}