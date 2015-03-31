# Test suite for io.js in Docker based on Alpine Linux

## Prerequisites

* [Docker](https://docs.docker.com/installation)
* [Compose](https://docs.docker.com/compose/install)

## Build and Run

    git clone git@github.com:iojs/io.js.git
    docker-compose build
    docker-compose run web

## Build and run without Compose

    docker build -t alpine-nodejs .
    docker run -v $(pwd):/tmp alpine-nodejs

## Get inside

    docker-compose run --entrypoint sh web
