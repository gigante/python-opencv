.PHONY: build test push save

CV=4.4

build:
	@docker build -t dkimg/opencv:$(CV) ./$(CV)

test:
	docker run -it --rm -v $$(pwd):/mnt/$$(basename $$(pwd)) -w /mnt/$$(basename $$(pwd)) dkimg/opencv:$(CV) python3 test.py

push:
	@docker push dkimg/opencv:$(CV)

save:
	@docker save dkimg/opencv:$(CV) | gzip > dkimg_opencv$(CV).tar.gz