.PHONY: build dev

build:
	inkssg build .

dev:
	inkssg serve . --addr 127.0.0.1:4321
