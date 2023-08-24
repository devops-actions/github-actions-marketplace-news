---
title: Docker Scout
date: 2023-08-24 19:06:40 +00:00
tags:
  - docker
  - GitHub Actions
draft: false
repo: docker/scout-action
marketplace: https://github.com/marketplace/actions/docker-scout
version: v0.23.1
dependentsNumber: 39
---


Version updated for **docker/scout-action** to version **v0.23.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **39** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-scout) to find the latest changes.

## Release notes

### Environment

Record an image to an environment:

```yaml
- uses: docker/scout-action@v0.23.1
  with:
    command: environment
    image: ${{ step.meta.outputs.tags }}
    environment: staging
```

### Compare to environment

Compare an image to the newest one for a specific environment:

```yaml
- uses: docker/scout-action@v0.23.1
  with:
    command: compare
    image: ${{ step.meta.outputs.tags }}
    to-env: staging
```

### Namespace of Docker Organization

Indicate the namespace of your Docker organization to match the right data from https://scout.docker.com. For instance when you compare an image not on https://hub.docker.com

```yaml
- uses: docker/scout-action@v0.23.1
  with:
    command: compare
    image: my-registy-1.example.com/repository:tag
    to-latest: true
    organization: my-docker-org
```


