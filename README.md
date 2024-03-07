# FOSSA CLI

This repository contains a docker image wrapping FOSSA CLI:
- Dive into the repo on Docker hub: https://hub.docker.com/r/caprarodorner/fossa-cli
- Dive into the GitHub repo: https://github.com/caprarodorner/fossa-cli-docker

## Running FOSSA CLI

You can run the FOSSA CLI tool's analyze command using the following statement:

```bash
docker run -v /path/to/your/project:/project -e FOSSA_API_KEY caprarodorner/fossa-cli analyze
```

This assumes that the project you want to analyze, lives in the directory `/path/to/your/project` and your host system has the environment variable `FOSSA_API_KEY` set.

Checkout [FOSSA's own documentation on FOSSA CLI](https://github.com/fossas/fossa-cli) for more details.
