FROM alpine:3.19.1

# Install FOSSA CLI and clean up aftwards
RUN apk add -v --no-cache curl bash
RUN curl -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/fossas/fossa-cli/master/install-latest.sh | bash
RUN apk -v --purge del curl bash

# Configure
VOLUME /project
WORKDIR /project

ENTRYPOINT [ "fossa" ]
