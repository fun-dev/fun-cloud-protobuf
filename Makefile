build-auth:
	./generate.sh auth
build-container:
	./generate.sh container
build-data:
	./generate.sh data
build-directory:
	./generate.sh directory
build-image:
	./generate.sh image
build-all:
	./generate.sh auth
	./generate.sh container
	./generate.sh data
	./generate.sh directory
	./generate.sh image