module "test_2" {
  source = "../../terraform-github-as-code"

  owner = "arthurbdiniz"
  name = "test_2"

  labels = [
    {
      name        = "test"
      description = "test"
      color       = "ffffff"
    }
  ]
}
