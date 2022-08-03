resource "null_resource" "root" {
  provisioner "local-exec" {
    command = "helpers/seed.py"
    interpreter = ["python"]
  }
}