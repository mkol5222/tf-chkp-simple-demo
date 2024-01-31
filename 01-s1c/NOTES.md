
```shell
# work folder
cd /workspaces/demo123/01-s1c

alias tf=terraform

export TF_VAR_CPSERVER=mtestxx
export TF_VAR_CPTENANT=109xxx
export TF_VAR_CPAPIKEY=BKnxxx==

terraform init
terraform plan
terraform apply

# import into TF state, where relevant
terraform import checkpoint_management_host.b tak
terraform import checkpoint_management_host.a tik
terraform apply

terraform state show checkpoint_management_host.a
```

would give HCL code
```terraform
# checkpoint_management_host.a:
resource "checkpoint_management_host" "a" {
    color        = "blue"
    id           = "tik"
    ipv4_address = "192.0.2.1"
    name         = "tik"
    nat_settings = {}
    tags         = [
        "checkpoint",
        "terraform",
    ]
}
```