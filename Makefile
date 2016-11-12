
build:
	vagrant up
	vagrant halt
	
package: build
	vagrant package --base muon-dev-vm
	
publish: build
	echo "Publish to S3 is currently manual"
