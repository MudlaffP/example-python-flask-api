.PHONY: docker-build
docker-build:
	mkdir -p pip-cache
	docker build -v "$(pwd)/pip-cache:/root/.cache/pip"-t example-app:lastest .
