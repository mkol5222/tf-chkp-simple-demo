
resource "checkpoint_management_publish" "example" { 
    triggers = [ "${timestamp()}"]
    depends_on = [ checkpoint_management_host.a, checkpoint_management_host.b ]
}
