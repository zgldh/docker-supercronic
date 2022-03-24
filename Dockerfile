FROM busybox

WORKDIR /tmp

# Supercronic
ENV SUPERCRONIC_URL=https://github.com/aptible/supercronic/releases/download/v0.1.12/supercronic-linux-386 \
    SUPERCRONIC=supercronic-linux-386 \
    SUPERCRONIC_SHA1SUM=9c40fcff02fa4e153d2f55826e1fa362cd0e448e
RUN curl -fsSLO "$SUPERCRONIC_URL" \
 && echo "${SUPERCRONIC_SHA1SUM}  ${SUPERCRONIC}" | sha1sum -c - \
 && chmod +x "$SUPERCRONIC"
 
ENV SUPERCRONIC_URL=https://github.com/aptible/supercronic/releases/download/v0.1.12/supercronic-linux-amd64 \
  SUPERCRONIC=supercronic-linux-amd64 \
  SUPERCRONIC_SHA1SUM=048b95b48b708983effb2e5c935a1ef8483d9e3e
RUN curl -fsSLO "$SUPERCRONIC_URL" \
 && echo "${SUPERCRONIC_SHA1SUM}  ${SUPERCRONIC}" | sha1sum -c - \
 && chmod +x "$SUPERCRONIC"
 
ENV SUPERCRONIC_URL=https://github.com/aptible/supercronic/releases/download/v0.1.12/supercronic-linux-arm \
    SUPERCRONIC=supercronic-linux-arm \
    SUPERCRONIC_SHA1SUM=d72d3d40065c0188b3f1a0e38fe6fecaa098aad5
RUN curl -fsSLO "$SUPERCRONIC_URL" \
 && echo "${SUPERCRONIC_SHA1SUM}  ${SUPERCRONIC}" | sha1sum -c - \
 && chmod +x "$SUPERCRONIC"
 
ENV SUPERCRONIC_URL=https://github.com/aptible/supercronic/releases/download/v0.1.12/supercronic-linux-arm64 \
    SUPERCRONIC=supercronic-linux-arm64 \
    SUPERCRONIC_SHA1SUM=8baba3dd0b0b13552aca179f6ef10d55e5dee28b
RUN curl -fsSLO "$SUPERCRONIC_URL" \
 && echo "${SUPERCRONIC_SHA1SUM}  ${SUPERCRONIC}" | sha1sum -c - \
 && chmod +x "$SUPERCRONIC"
