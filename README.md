# ansible-pi

Setup your Raspberry Pi NAS with Samba shares.

## Installation

Clone and setup the ansible script.

```
git clone https://github.com/fodpeter/ansible-nas-pi.git
cd ansible-pi
cp hosts.example hosts
python -c "import getpass; print(getpass.getpass())" > .vault_pass.txt
ansible-vault encrypt vault.yml.example --output  group_vars/nas-pi/vault.yml --vault-password-file .vault_pass.txt
```

Edit `hosts` file and the passwords in vault.
`ansible-vault edit group_vars/nas-pi/vault.yml --vault-password-file .vault_pass.txt`

## Eanble SSH on Raspberry PI

```
sudo raspi-config
```

https://www.raspberrypi.org/documentation/remote-access/ssh/README.md

## Usage

Deploy using [ansible](http://www.ansible.com).

```
ansible-playbook playbook.yml -i hosts --ask-pass -v --vault-password-file .vault_pass.txt
```

or simply

```
./run.sh
```

## Requirements

[Ansible](http://www.ansible.com/) is required.

## Thanks
Inspiration:
* https://github.com/arbabnazar/ansible-roles/tree/master/samba
* https://github.com/motdotla/ansible-pi
