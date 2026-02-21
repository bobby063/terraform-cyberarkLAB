resource "local_file" "safe_output" {
  content  = jsonencode(var.safe)
  filename = "${path.module}/../../generated/${var.safe.name}.json"
}
