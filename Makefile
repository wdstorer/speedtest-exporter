IMAGE_NAME = registry:5000/speedtest:0.3

build-image:
	docker build -t $(IMAGE_NAME) .

push-image:
	docker push $(IMAGE_NAME)

run-image:
	docker run --rm -it --net host $(IMAGE_NAME)

run-shell:
	docker run --rm -it --net host $(IMAGE_NAME) /bin/bash
