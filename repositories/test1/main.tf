module "test_1" {
  source = "../../terraform-github-as-code"

  owner = "arthurbdiniz"
  name = "test_1"

  labels = [
    {
      name        = "test"
      description = "test"
      color       = "ffffff"
    }
  ]
}

