FROM debian:stable-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential clang make gdb ca-certificates \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /course
CMD ["make", "check"]
