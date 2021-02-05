DOCKER_TAG = drone-pre-commit-$(USER)
DOCKER_TAG_PERSONAL = $(DOCKER_TAG):personal

.PHONY: clean

.PHONY: default
default: test

.PHONY: test
test: build-personal
	docker run --rm -v $(shell pwd):/src:ro --workdir /src $(DOCKER_TAG_PERSONAL)

.PHONY: build
build: ./Dockerfile
	docker build -t $(DOCKER_TAG) .
	docker tag "$(DOCKER_TAG):latest" "$(DOCKER_TAG):base"

.PHONY: build-personal
build-personal: build ./Dockerfile.personal
	docker build \
		--build-arg "BASE_IMAGE=$(DOCKER_TAG)" \
		-f ./Dockerfile.personal \
		-t "$(DOCKER_TAG_PERSONAL)" \
		.

.PHONY: install-hooks
install-hooks:
	pre-commit install --install-hooks

.PHONY: check
check:
	pre-commit run --all-files

.PHONY: all
all: check test
