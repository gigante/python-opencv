.PHONY: run build login push latest test save

CV ?= 4.7.0
DIST ?= fedora
WORKDIR=/mnt/$$(basename $$(pwd))
ORG=hdgigante

run: build test login push

build:
	docker build --build-arg OPENCV_VERSION=$(CV) -t $(ORG)/opencv:$(CV)-$(DIST) ./$(DIST)

push:
	@docker push $(ORG)/opencv:$(CV)-$(DIST)

latest:
	@docker pull $(ORG)/opencv:$(CV)-$(DIST)
	@docker tag $(ORG)/opencv:$(CV)-$(DIST) $(ORG)/opencv:latest
	@docker push $(ORG)/opencv:latest

test:
	@docker run --rm -v $$(pwd):$(WORKDIR) -w $(WORKDIR) $(ORG)/opencv:$(CV)-$(DIST) python3 test.py

save:
	@docker save $(ORG)/opencv:$(CV)-$(DIST) | gzip > $(ORG)_opencv$(CV)-$(DIST).tar.gz
