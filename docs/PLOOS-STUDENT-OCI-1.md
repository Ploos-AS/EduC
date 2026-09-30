# PLOOS-STUDENT-OCI-1

Status: reference implementation

## Purpose

A Ploos programming course must be completable with the course repository and a standard OCI runtime such as Docker or Podman. The student must not depend on private Ploos infrastructure.

The intended workflow is:

`clone -> start student OCI -> learn`

## Contract

A conforming course image must:

1. contain the redistributable compiler/toolchain and utilities required by the course;
2. use `/course` as the mounted course checkout and working directory;
3. work without credentials or access to private Ploos services;
4. contain no proprietary SDKs, ROMs, operating-system images, license keys or other restricted payloads;
5. support both Docker and Podman through ordinary OCI semantics;
6. provide `student-env-info` so a learner can identify the environment and important tool versions;
7. provide `student-check` as the stable course verification entry point;
8. default to `student-check` when run without another command;
9. be usable non-interactively by CI as well as interactively by a learner;
10. be versioned for course releases so a published course can name a qualified image version.

## Stable commands

### `student-env-info`

Prints course/environment identity and important tool versions. It must not modify the checkout.

### `student-check`

Runs the checks a learner should be able to run after cloning the repository. For EduC this delegates to `make check`.

## Image naming

The recommended registry name is:

`ghcr.io/ploos-as/<course>-student`

Mutable development tags may be used during development. Published course releases must reference an immutable digest or qualified release tag.

## Course/release relationship

A course release should document the student image that was qualified with that release. Updating the image must not silently change the environment promised by an already published course release.

## CI

Course CI should build the student image and execute `student-check` inside it. This proves that the documented student path is exercised rather than maintaining a separate untested container recipe.

## Restricted dependencies

When a course concerns a platform with proprietary components, the student image contains only redistributable tooling. If optional exercises require learner-owned proprietary files, they must be supplied externally and must never be embedded in the image or repository.
