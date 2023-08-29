---
title: Docker Scout
date: 2023-08-29 18:53:47 +00:00
tags:
  - docker
  - GitHub Actions
draft: false
repo: docker/scout-action
marketplace: https://github.com/marketplace/actions/docker-scout
version: v0.23.4
dependentsNumber: 40
---


Version updated for **docker/scout-action** to version **v0.23.4**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **40** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-scout) to find the latest changes.

## Release notes

Fix issue when `organization` is not set but is needed.

Now the GHA will not panic and will print a message when `organization` is required. For instance when comparing image to the one of an environment or when recording an image to an environment.

```yaml
- uses: docker/scout-action@v0.23.2
  with:
    command: compare
    image: ${{ step.meta.outputs.tags }}
    to-env: staging
    organization: my-docker-org
```

```yaml
- uses: docker/scout-action@v0.23.2
  with:
    command: environment
    image: ${{ step.meta.outputs.tags }}
    environment: staging
    organization: my-docker-org
```

rel: https://github.com/docker/scout-action/issues/14
