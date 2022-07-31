.PHONY: docker-build
docker-build:
	mkdir -p pip-cache
	docker build -t example-app:lastest .

.PHONY: docker-build2
docker-build2:
	docker build -t example-app2:lastest .

.PHONY: podman-build
podman-build:
	mkdir -p ./pip-cache
	sudo podman build -v ${PROJECT_ROOT}/pip-cache:/root/.cache/pip -f ./Dockerfile -t example-app-podman:lastest .
