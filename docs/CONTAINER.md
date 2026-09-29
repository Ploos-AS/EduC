# Container development environment

The container is optional: learners may use a normal local C toolchain. It exists to provide a reproducible fallback and CI-like environment.

Build:

    docker build -t educ .

Run repository checks from the checkout:

    docker run --rm -v "$PWD:/course" educ

Podman can be used with the equivalent commands.
