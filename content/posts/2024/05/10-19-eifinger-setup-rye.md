---
title: Python Setup Rye
date: 2024-05-10 19:10:38 +00:00
tags:
  - eifinger
  - GitHub Actions
draft: false
repo: eifinger/setup-rye
marketplace: https://github.com/marketplace/actions/python-setup-rye
version: v3.0.0
dependentsNumber: "142"
---


Version updated for **eifinger/setup-rye** to version **v3.0.0**.
- This action is used across all versions by **142** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-rye) to find the latest changes.

## Release notes

# Faster default version
From this release on by default this action installs the `rye` version defined as `default` in `action.yml`.
This gets automatically updated in a new release of this action when a new version of rye is released.
If you don't want to wait for a new release of this action you can use use `version: latest`.

The thoughts behind this change:

- Since the default is now a static version this means by default the tools cache can be used instead of always downloading `latest`. This will speed up self hosted runners and allows for further optimisation in the future
- I fully automated everything that needs to be done to incorporate a new version of `rye`. The only thing I have to do is validate the automatically created PR and merge it. This gives me the confidence that the `default` version will never lack behind by more than a day.

If you still want to always download the `latest` version of rye you have to change your config to:

```yaml
- name: Install a specific version
  uses: eifinger/setup-rye@v3
  with:
    version: 'latest'
```

# New rye releases will trigger a patch release

From this release on new releases of rye will trigger a patch release of this action. Before it always triggered a feature release.

Before: `2.1.0->2.2.0`

Now: `2.1.0->2.1.1`

## 🚨 Breaking changes

- feat: use automatically updated default version @eifinger (#241)

