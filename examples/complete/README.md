<!-- BEGIN_TF_DOCS -->
# APIC Control Plane MTU Policy Example

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create resources. Resources can be destroyed with `terraform destroy`.

```hcl
module "infraCPMtuPol" {
  source  = "netascode/fabric-control-plane-mtu/aci"
  version = ">= 0.1.0"

  control_plane_mtu = 9000
}
```
<!-- END_TF_DOCS -->