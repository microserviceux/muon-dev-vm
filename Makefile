
build:
	vagrant up
	vagrant halt

package: clean build
	vagrant package --vagrantfile Vagrantfile.package --output muon-dev-vm.box

publish: build
	echo "Publish to S3 is currently manual see bin/trasnfer.sh"

clean:
	vagrant destroy -f
	rm -f muon-dev-vm.box
