# docker-supercronic
A docker image for supercronic

## Usage

`Dockerfile`

```
ENV SUPERCRONIC=supercronic-linux-amd64
# Choose different version for your host.
#ENV SUPERCRONIC=supercronic-linux-386
#ENV SUPERCRONIC=supercronic-linux-arm
#ENV SUPERCRONIC=supercronic-linux-arm64

COPY --from=zgldh/docker-supercronic "/tmp/${SUPERCRONIC}" "/usr/local/bin/${SUPERCRONIC}"
RUN ln -s "/usr/local/bin/${SUPERCRONIC}" /usr/local/bin/supercronic
```
