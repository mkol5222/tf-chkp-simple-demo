
locals {
    hosts = csvdecode(file("${path.module}/hosts.csv"))
}

output "hostDict" {
    value = { for host in local.hosts : host.name => host }
}

resource "checkpoint_management_host" "hosts" {
    for_each = { for host in local.hosts : host.name => host }

    name = each.value.name
    ipv4_address = each.value.IP
    color = each.value.color
    tags = [ "made-by-tf", each.value.tag]
}