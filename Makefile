.PHONY: docker-build
docker-build:
	docker build -t example-app:lastest .

.PHONY: docker-build2
docker-build2:
	docker build -t example-app2:lastest .
