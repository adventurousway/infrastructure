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
