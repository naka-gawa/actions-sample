REPO_NAME := tmnakagawa/actions-example
VERSION_TAG ?= latest

.PHONY: build
build :
	DOCKER_BUILDKIT=1 docker build \
		-f docker/Dockerfile -t ${REPO_NAME}:${VERSION_TAG} .
