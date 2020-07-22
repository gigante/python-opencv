.PHONY: build test push save

CV=4.4

build:
	@docker build -t dkimg/opencv:$(CV) ./$(CV)

test:
	@docker pull dkimg/opencv:$(CV)
	@docker pull quay.io/dkimg/opencv:$(CV)
	@docker run -it --rm -v $$(pwd):/mnt/$$(basename $$(pwd)) -w /mnt/$$(basename $$(pwd)) dkimg/opencv:$(CV) python3 test.py
	@docker run -it --rm -v $$(pwd):/mnt/$$(basename $$(pwd)) -w /mnt/$$(basename $$(pwd)) quay.io/dkimg/opencv:$(CV) python3 test.py

push:
	@echo "$(DOCKER_PASSWORD)" | docker login -u "$(DOCKER_USERNAME)" --password-stdin
	@echo "$(QUAY_PASSWORD)" | docker login quay.io -u "$(QUAY_USERNAME)" --password-stdin
	@docker tag dkimg/opencv:$(CV) quay.io/dkimg/opencv:$(CV)
	@docker push dkimg/opencv:$(CV)
	@docker push quay.io/dkimg/opencv:$(CV)

save:
	@docker save dkimg/opencv:$(CV) | gzip > dkimg_opencv$(CV).tar.gz