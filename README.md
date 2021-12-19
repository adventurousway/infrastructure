# Infrastructure

Ansible configuration for the Adventurous Way technology stack.

## Installation

The `hosts.ini` file does not use FQDNs so SSH host aliases will need to be created locally, for example:
```sh
# ~/.ssh/config

Host <alias>
  User <remote_user>
  HostName <ip_address>
```

To install the Ansible Galaxy requirements:

```sh
make install
```

## Usage

```sh
make base # run the base playbook
```

## Development

To lint the repository:

```sh
make lint
```
