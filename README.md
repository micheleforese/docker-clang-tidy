# Dockerfile for Clang-Tidy

## Building the Image

```sh
docker build \
-t micheleforese/clang-tidy:latest \
-t micheleforese/clang-tidy:v11 \
.
```

## Use The image

```sh
docker run \
--rm \
-it \
--user $(id -u):$(id -g) \
-v "$(pwd -W)":/src \
micheleforese/clang-tidy:latest \
clang-tidy src/main.cpp -checks=*
```

```sh
docker run --rm -it --user $(id -u):$(id -g) -v "$(pwd -W)":/src micheleforese/clang-tidy:latest \
clang-tidy src/* -checks=* -header-filter=.*
```
