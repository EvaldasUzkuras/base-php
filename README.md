# About this Repo

[![Build Status](https://github.com/wodby/base-php/workflows/Build%20docker%20image/badge.svg)](https://github.com/wodby/base-php/actions)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)

This repository is a fork of https://github.com/docker-library/php with a few changes:

* We build only Alpine-based FPM variants
* We build variants with the latest alpine and alpine 3.13 (because of https://github.com/alpinelinux/docker-alpine/issues/182) 

## Docker Images

* All images based on Alpine Linux
* Base image: [wodby/alpine](https://github.com/wodby/alpine)
* [Docker Hub](https://hub.docker.com/r/wodby/base-php)

Supported tags and respective `Dockerfile` links:

* `8.1.4-alpine3.15`, `8.1-alpine3.15`, `8-alpine3.15`, `8-alpine3.15`, `8.1.4-alpine`, `8.1-alpine`, `8-alpine`, `8.1.4`, `8.1`, `8`, `alpine3.15`, `alpine`, `latest` [_(Dockerfile)_](https://github.com/wodby/base-php/tree/master/8.1/alpine3.15/fpm/Dockerfile.wodby)
* `8.0.17-alpine3.15`, `8.0-alpine3.15`, `8.0.17-alpine`, `8.0-alpine`, `8.0.17`, `8.0` [_(Dockerfile)_](https://github.com/wodby/base-php/tree/master/8.0/alpine3.15/fpm/Dockerfile.wodby)
* `7.4.28-alpine3.15`, `7.4-alpine3.15`, `7-alpine3.15`, `7.4.28-alpine`, `7.4-alpine`, `7-alpine`, `7.4.28`, `7.4`, `7`,  [_(Dockerfile)_](https://github.com/wodby/base-php/tree/master/7.4/alpine3.15/fpm/Dockerfile.wodby)
* `8.1.4-alpine3.13`, `8.1-alpine3.13`, `8-alpine3.13`, `alpine3.13` [_(Dockerfile)_](https://github.com/wodby/base-php/tree/master/8.1/alpine3.15/fpm/Dockerfile.wodby)
* `8.0.17-alpine3.13`, `8.0-alpine3.13` [_(Dockerfile)_](https://github.com/wodby/base-php/tree/master/8.0/alpine3.15/fpm/Dockerfile.wodby)
* `7.4.28-alpine3.13`, `7.4-alpine3.13` [_(Dockerfile)_](https://github.com/wodby/base-php/tree/master/7.4/alpine3.15/fpm/Dockerfile.wodby)

All images built for `linux/amd64` and `linux/arm64`
