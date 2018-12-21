IMAGE_NAME=hugo-test
PORT=80

# Hugo
hugo-build:
	cd ./exampleSite && hugo

# Docker
docker-build:
	docker image build --no-cache -t $(IMAGE_NAME) .
run:
	docker container run -d -p $(PORT):80 $(IMAGE_NAME)
