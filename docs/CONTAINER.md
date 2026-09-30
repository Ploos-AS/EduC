# Student OCI environment

EduC implements [PLOOS-STUDENT-OCI-1](PLOOS-STUDENT-OCI-1.md). The image is the reproducible course laboratory: the repository plus Docker or Podman is sufficient for the supported course path.

## Build locally

```sh
docker build -t educ-student .
```

## Verify the environment

```sh
docker run --rm educ-student student-env-info
```

## Run course checks

From the repository checkout:

```sh
docker run --rm -v "$PWD:/course" educ-student
```

The default command is `student-check`, which runs `make check` in `/course`.

## Interactive shell

```sh
docker run --rm -it -v "$PWD:/course" educ-student sh
```

Podman supports the same OCI workflow by replacing `docker` with `podman`.

## Release rule

Development may use a locally built or mutable image. A published EduC release must document the qualified `ghcr.io/ploos-as/educ-student` release tag or immutable digest used to verify that course release.
