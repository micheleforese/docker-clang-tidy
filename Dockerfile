FROM debian:11

RUN apt-get update \
  && apt-get install \
  -y \
  --no-install-recommends \
  clang-tidy-11 \
  git \
  ssh \
  ca-certificates \
  && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/clang-tidy-11 /usr/bin/clang-tidy

WORKDIR /src

VOLUME [ "/src" ]