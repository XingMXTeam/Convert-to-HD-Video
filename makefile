TAG=6.1.1
INPUT_FILE=a.mp4
OUTPUT_FILE=output.mp4
FACTOR=4
MODEL=realesr-animevideov3

build:
	docker build -t video2x:$(TAG) .

run:
	docker run --gpus all --privileged -it --rm \
		-v $(PWD):/host \
		-e INPUT_FILE=/host/$(INPUT_FILE) \
		-e OUTPUT_FILE=/host/$(OUTPUT_FILE) \
		-e FACTOR=$(FACTOR) \
		-e MODEL=$(MODEL) \
		video2x:$(TAG)

clean:
	docker rmi video2x:$(TAG)
