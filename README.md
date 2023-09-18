# Ghost CMS Automation with Terraform and Ansible

This project aims to automate the provisioning of a Ghost CMS (Content Management System) using Terraform and Ansible. With this setup, you can easily deploy and manage your own Ghost CMS instance on three digital ocean droplet.

## Prerequisites

Before getting started, make sure you have the following prerequisites installed on your local machine:

- [Terraform](https://www.terraform.io/downloads.html)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Configuring the .env File

The `terraform.tfvars.example` file contains configuration variables that are used to setup droplets and your dns records. To configure the file, follow these steps:

1. Make a copy of the `terraform/terraform.tfvars.example` file and rename it to .env:
```bash
cp .terraform/terraform.tfvars.example .terraform/terraform.tfvars
```
2. Edit the `terraform.tfvars` file and modify the following configuration variables according to your preferences:
   - `digitalocean_token`: "DigitalOcean API token"
   - `cloudflare_zone_id`: "Your domain Cloudflare zone ID"
   - `cloudflare_token`: "Cloudflare API token with write access to your zone"

## Getting Started

To get started with automating your Ghost CMS deployment, follow these steps:

1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/aminsaedi/ghost-automation.git
   ```

2. Navigate to the project directory.
   ```bash
   cd ghost-automation
   ```

3. Run the install script
   ```bash
   ./install.sh
   ```
   This script will execute the necessary Terraform and Ansible commands to provision the infrastructure and configure the Ghost CMS droplet.

## Project Structure

The project structure is organized as follows:

- `install.sh`: The bash script that automates the execution of Terraform and Ansible commands.
- `terraform/`: Contains the Terraform configuration files for provisioning the DigitalOcean droplets.
- `ansible/`: Contains the Ansible playbook and configuration files for configuring the Ghost CMS droplet.
- `vagrant/`: Contains the Vagrantfile for testing the Ansible playbook locally.


# TODO
- [ ] Iptables hardening
- [x] Add ansible role to setup ssl
- [ ] Add log server role to ansible

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please feel free to submit a pull request or open an issue in the GitHub repository.

## License

This project is licensed under the [MIT License](LICENSE).

