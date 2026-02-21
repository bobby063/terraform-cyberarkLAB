resource "local_file" "safe_output" {
  filename = "${path.module}/output/${var.safe_name}.txt"

  content = <<EOF
Safe Name: ${var.safe_name}
Description: ${var.description}
Status: Simulated safe created successfully
EOF
}
