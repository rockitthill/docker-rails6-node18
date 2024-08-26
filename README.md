# Dockerfile for rockitthill/rails6-node18

`rockitthill/ruby27multi-node18` image with additions suitable for Rails 6: tzdata, libmariadb-dev, imagemagick, libjemalloc2, apt-transport-https, and apt-utils.

Comes with a simplistic `MALLOC_CONF` (see source), configures bundler, sets up binding to `0.0.0.0`, and exposes port `3000`.

Compatible with `linux/arm64` (M1, M2) and `linux/amd64` (Intel).

## Building, Tagging, and Pushing

Use the `./build` script in this folder to build, tag, and push this image.
