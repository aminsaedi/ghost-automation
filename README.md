# Ghost CMS Automation with Terraform and Ansible

This project aims to automate the provisioning of a Ghost CMS (Content Management System) using Terraform and Ansible. With this setup, you can easily deploy and manage your own Ghost CMS instance on a cloud provider of your choice.

## Prerequisites

Before getting started, make sure you have the following prerequisites installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Digital Ocean Account](e.g., AWS, GCP, Azure)

## Getting Started

To get started with automating your Ghost CMS deployment, follow these steps:

1. Clone this repository to your local machine.
   ````
   git clone https://github.com/aminsaedi/ghost-automation.git
   ```

2. Navigate to the project directory.
   ````
   cd ghost-automation
   ```

3. Run the install script

  ```bash
  ./install.sh
  ```

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please feel free to submit a pull request or open an issue in the GitHub repository.

## License

This project is licensed under the [MIT License](LICENSE).


# TODO
- [ ] Iptables hardening
- [ ] Add terraform provider for DigitalOcean
- [ ] Add ansible role to setup ssl
