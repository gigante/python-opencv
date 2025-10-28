.PHONY: run build login push latest test save

CV ?= 5.0.0-alpha
DIST ?= fedora
WORKDIR=/mnt/$$(basename $$(pwd))
ORG=hdgigante
REPO=python-opencv
TARGET_REPO=$(ORG)/$(REPO)
TARGET_IMAGE=$(TARGET_REPO):$(CV)-$(DIST)

run: build test login push

build:
	@docker build . --build-arg OPENCV_VERSION=$(CV) -t $(TARGET_IMAGE) -f Dockerfile.$(DIST)

push:
	@docker push $(TARGET_IMAGE)

latest:
	@docker pull $(TARGET_IMAGE)
	@docker tag $(TARGET_IMAGE) $(TARGET_REPO):latest
	@docker push $(TARGET_REPO):latest

test:
	@docker run --rm -v $$(pwd):$(WORKDIR) -w $(WORKDIR) $(TARGET_IMAGE) python3 test.py

save:
	@docker save $(TARGET_IMAGE) | gzip > $(ORG)_$(REPO)_$(CV)-$(DIST).tar.gz
