IMAGE_NAME=terrassa
APP_NAME=terrassa
IMAGE_PORT=80
HOST_PORT=80
HUGO_SITE=exampleSite
HUGO_BASE_URL=https://danielkvist.github.io/terrassa/

build:
	cd ./$(HUGO_SITE) && hugo
build-min:
	cd ./$(HUGO_SITE) && hugo --minify
build-deploy:
	cd ./$(HUGO_SITE) && hugo --minify --baseURL="$(HUGO_BASE_URL)"
server:
	cd ./$(HUGO_SITE) && hugo server -w
server-draft:
	cd ./$(HUGO_SITE) && hugo server -w -D
docker:
	docker image build --build-arg HUGO_SITE=$(HUGO_SITE) --build-arg EXPOSE=$(IMAGE_PORT) -t $(IMAGE_NAME) .
docker-nc:
	docker image build --build-arg HUGO_SITE=$(HUGO_SITE) --build-arg EXPOSE=$(IMAGE_PORT) --no-cache -t $(IMAGE_NAME) .
run:
	docker container run -d -p $(IMAGE_PORT):$(HOST_PORT) --name $(APP_NAME) $(IMAGE_NAME)
stop:
	docker container stop $(APP_NAME)
rm:
	docker container rm $(APP_NAME)
clean:
	docker container stop $(APP_NAME) && docker container rm $(APP_NAME) && docker image rm $(IMAGE_NAME) && cd ./$(HUGO_SITE) && rm -rf ./public
