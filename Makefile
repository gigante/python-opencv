.PHONY: build test push save alpine

CV=4.4
DIST=fedora

build:
	@docker build -t dkimg/opencv:$(CV)-$(DIST) ./$(DIST)/$(CV)

test:
	@docker pull dkimg/opencv:$(CV)-$(DIST)
	@docker pull quay.io/dkimg/opencv:$(CV)-$(DIST)
	@docker run -it --rm -v $$(pwd):/mnt/$$(basename $$(pwd)) -w /mnt/$$(basename $$(pwd)) dkimg/opencv:$(CV)-$(DIST) python3 test.py
	@docker run -it --rm -v $$(pwd):/mnt/$$(basename $$(pwd)) -w /mnt/$$(basename $$(pwd)) quay.io/dkimg/opencv:$(CV)-$(DIST) python3 test.py

push:
	@echo "$(DOCKER_PASSWORD)" | docker login -u "$(DOCKER_USERNAME)" --password-stdin
	@echo "$(QUAY_PASSWORD)" | docker login quay.io -u "$(QUAY_USERNAME)" --password-stdin
	@docker tag dkimg/opencv:$(CV)-$(DIST) quay.io/dkimg/opencv:$(CV)-$(DIST)
	@docker push dkimg/opencv:$(CV)-$(DIST)
	@docker push quay.io/dkimg/opencv:$(CV)-$(DIST)

save:
	@docker save dkimg/opencv:$(CV)-$(DIST) | gzip > dkimg_opencv$(CV)-$(DIST).tar.gz
