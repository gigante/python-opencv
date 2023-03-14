.PHONY: run build login push latest test save

CV ?= 4.7.0
DIST ?= fedora
WORKDIR=/mnt/$$(basename $$(pwd))
ORG=hdgigante
REPO=python-opencv

run: build test login push

build:
	docker build --build-arg OPENCV_VERSION=$(CV) -t $(ORG)/$(REPO):$(CV)-$(DIST) ./$(DIST)

push:
	@docker push $(ORG)/$(REPO):$(CV)-$(DIST)

latest:
	@docker pull $(ORG)/$(REPO):$(CV)-$(DIST)
	@docker tag $(ORG)/$(REPO):$(CV)-$(DIST) $(ORG)/$(REPO):latest
	@docker push $(ORG)/$(REPO):latest

test:
	@docker run --rm -v $$(pwd):$(WORKDIR) -w $(WORKDIR) $(ORG)/$(REPO):$(CV)-$(DIST) python3 test.py

save:
	@docker save $(ORG)/$(REPO):$(CV)-$(DIST) | gzip > $(ORG)_$(REPO)_$(CV)-$(DIST).tar.gz
