FROM alpine:3.19.1

ENV FOSSA_TELEMETRY_SCOPE=off
ENV FOSSA_API_KEY=<secret>

# Install FOSSA CLI and clean up aftwards
RUN apk add -v --no-cache curl bash
RUN curl -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/fossas/fossa-cli/master/install-latest.sh | bash
RUN apk -v --purge del curl bash

# As QA hook during automated build
RUN fossa --version

# Configure
VOLUME /project
WORKDIR /project

# Default command
CMD [ "fossa", "-h" ]

ENTRYPOINT [ "fossa" ]
