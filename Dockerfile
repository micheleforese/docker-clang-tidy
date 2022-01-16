FROM debian:11

LABEL mantainer="Michele Forese"
LABEL email="michele.forese.personal@gmail.com"
LABEL name="clang-tidy"
LABEL version="0.1"

ENV DEBIAN_FRONTEND noninteractive

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