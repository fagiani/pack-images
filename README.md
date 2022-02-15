# Heroku Pack Legacy Base Images

[![CircleCI](https://circleci.com/gh/fagiani/pack-images.svg?style=svg)](https://circleci.com/gh/fagiani/pack-images)

This repository is responsible for building and publishing images that enable
**Legacy** Heroku-like builds with [Cloud Native Buildpacks'](https://buildpacks.io)
[`pack`](https://github.com/buildpacks/pack) command.

* [fagiani/pack:16](https://hub.docker.com/r/fagiani/pack/tags/) - A CNB
  compatible run image based on **heroku:16**
* [fagiani/pack:16-build](https://hub.docker.com/r/fagiani/pack/tags/) - A CNB
  compatible build image based on **heroku:16-build**
* [fagiani/buildpacks:16](https://hub.docker.com/r/fagiani/buildpacks/tags/) - A
  CNB Builder that features the **heroku-16** stack, heroku buildpacks,
  ~~and Salesforce Function buildpacks~~

## Usage

`pack build myapp --builder fagiani/buildpacks:16`
