.EXPORT_ALL_VARIABLES:

SHELL=/bin/bash -o pipefail

build:
	@docker build --pull -f Dockerfile.build --build-arg STACK=heroku-16 --build-arg BASE_IMAGE=heroku/heroku:16-build -t fagiani/pack:16-build .
	@docker build --pull -f Dockerfile.run --build-arg STACK=heroku-16 --build-arg BASE_IMAGE=heroku/heroku:16 -t fagiani/pack:16 .
	@pack create-builder fagiani/buildpacks:16 --config builder-16.toml --pull-policy if-not-present
	@docker tag fagiani/buildpacks:16 fagiani/buildpacks:latest

publish: build
	@docker push fagiani/pack:16-build
	@docker push fagiani/pack:16
	@docker push fagiani/buildpacks:16
	@docker push fagiani/buildpacks:latest
