terraform {
  backend "remote" {
    organization = "popa-org"

    workspaces {
      name = "tfe-io-input"
    }
  }
}
