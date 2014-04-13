
install-packer:
	wget https://dl.bintray.com/mitchellh/packer/0.5.2_linux_amd64.zip
	unzip 0.5.2_linux_amd64.zip
	rm 0.5.2_linux_amd64.zip

install-puppetmodules:
	bundle exec librarian-puppet install

install-bundle:
	bundle install

install: install-bundle install-packer install-puppetmodules

lint:
	rake lint

test:
	rake spec

web: test
	BUILD_HOST="web.affinitic.be" BUILD_ROLE="webserver" ./packer validate packer.json
	BUILD_HOST="web.affinitic.be" BUILD_ROLE="webserver" ./packer build packer.json
