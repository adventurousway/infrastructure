default:
	@true

install:
	@echo "Registering pre-commit hook to prevent accidentally committing unencrypted vaults"
	@if [ -d .git/ ]; then rm .git/hooks/pre-commit; fi
	ln -sf ${PWD}/scripts/vault_encrypt_secrets.sh .git/hooks/pre-commit

	@echo ""
	@echo "Installing Ansible Galaxy requirements"
	ansible-galaxy install -r galaxy-requirements.yml

lint:
	@ansible-lint --offline --exclude galaxy -v

bootstrap:
	@ansible-playbook playbooks/bootstrap.yml

base:
	@ansible-playbook playbooks/base.yml

# run the whole app playbook
app:
	@ansible-playbook playbooks/app.yml

# run individual playbooks
data:
	@ansible-playbook playbooks/app.yml -t data

proxy:
	@ansible-playbook playbooks/app.yml -t proxy

smtp:
	@ansible-playbook playbooks/app.yml -t smtp

registry:
	@ansible-playbook playbooks/app.yml -t registry

website:
	@ansible-playbook playbooks/app.yml -t website

commento:
	@ansible-playbook playbooks/app.yml -t commento

ghost:
	@ansible-playbook playbooks/app.yml -t ghost

matomo:
	@ansible-playbook playbooks/app.yml -t matomo
