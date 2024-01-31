resource "checkpoint_management_host" "a" {
  name = "tik"
  ipv4_address = "192.0.2.1"
  color = "blue"
  tags = ["terraform", "checkpoint"]
}
resource "checkpoint_management_host" "b" {
  name = "tak"
  ipv4_address = "192.0.2.10"
  color = "red"
  tags = ["terraform", "checkpoint"]
}