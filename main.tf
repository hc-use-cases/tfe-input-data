data "terraform_remote_state" "server_name" {
  backend = "atlas"

  config = {
    name = "popa-org/tfe-io-output"
  }
}

output "firewall_server_name" {
  value       = data.terraform_remote_state.server_name.outputs.random_name
  description = "Consume server name from different repo"
}