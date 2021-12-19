default:
	@true

install:
	@ansible-galaxy install -r galaxy-requirements.yml

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

registry:
	@ansible-playbook playbooks/app.yml -t registry
