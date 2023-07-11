terraform {
  cloud {
    organization = "reiche83"

    workspaces {
      name = "my-cli-example"
    }
  }
}
