# Run io.js tests on Docker based on Alpine Linux

## Prerequisites

* [Docker](https://docs.docker.com/installation)
* [Compose](https://docs.docker.com/compose/install)

## Build io.js and run tests

    git@github.com:oren/test-iojs-docker-alpine.git
    cd test-iojs-docker-alpine.git
    wget https://iojs.org/dist/v1.6.3/iojs-v1.6.3.tar.xz
    xz -cd iojs-v1.6.3.tar.xz | tar -xvf -
    docker-compose build --no-cache
    docker-compose run web sh
    cd /tmp/iojs-v1.6.3
    ./configure
    make
    make test

## Misc

* `curl` is needed for the tests
* `procps` is needed due to this error: AssertionError: { [Error: Command failed: /bin/sh -c ps -p 14517 -o args= ps: unrecognized option: p
