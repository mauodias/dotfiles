main: bootstrap install dotfiles

bootstrap:
	./bootstrap.sh

install:
	ansible-playbook install.yml -K

dotfiles:
	ansible-playbook dotfiles.yml
