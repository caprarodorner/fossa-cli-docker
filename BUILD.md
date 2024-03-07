# Build the Image

To build the image:

1. Create a Github Release with the tag `x.x.x` (with `x.x.x` being the latest version of FOSSA CLI).

2. Inspect at [https://github.com/caprarodorner/fossa-cli-docker/actions](https://github.com/caprarodorner/fossa-cli-docker/actions) that indeed the expected version of FOSSA CLI was installed in the Docker image.

3. Check [https://hub.docker.com/repository/docker/caprarodorner/fossa-cli](https://hub.docker.com/repository/docker/caprarodorner/fossa-cli) to see that the image in the expected version was properly published.