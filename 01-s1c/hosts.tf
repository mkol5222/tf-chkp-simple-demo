resource "checkpoint_management_host" "a" {
  name = "tik"
  ipv4_address = "192.0.2.1"
  color = "blue"
  tags = ["terraform", "checkpoint"]
}