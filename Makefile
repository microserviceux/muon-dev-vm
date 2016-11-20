
build: 
	vagrant up
	vagrant halt
	
package: clean build
	vagrant package --base muon-dev-vm
	
publish: build
	echo "Publish to S3 is currently manual"

clean: 
	vagrant destroy -f
	rm -f package.box
