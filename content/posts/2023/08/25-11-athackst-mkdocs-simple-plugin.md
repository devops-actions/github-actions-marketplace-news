---
title: MkDocs Simple action
date: 2023-08-25 11:11:56 +00:00
tags:
  - athackst
  - GitHub Actions
draft: false
repo: athackst/mkdocs-simple-plugin
marketplace: https://github.com/marketplace/actions/mkdocs-simple-action
version: v3.1.0
dependentsNumber: 34
---


Version updated for **athackst/mkdocs-simple-plugin** to version **v3.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **34** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mkdocs-simple-action) to find the latest changes.

## Release notes

# Get it

## Python

Install it with pip

```bash
pip install mkdocs-simple-plugin==3.1.0
```
See it on pypi: [https://pypi.org/project/mkdocs-simple-plugin](https://pypi.org/project/mkdocs-simple-plugin/3.1.0/)

## Docker

Pull it with docker

```bash
docker pull althack/mkdocs-simple-plugin:v3.1.0
```

See it on dockerhub: [https://hub.docker.com/repository/docker/althack/mkdocs-simple-plugin](https://hub.docker.com/repository/docker/althack/mkdocs-simple-plugin)

## Github

```yaml
- name: Build docs
  uses: athackst/mkdocs-simple-plugin:v3.1.0
```

See it in the actions marketplace: [https://github.com/marketplace/actions/mkdocs-simple-action](https://github.com/marketplace/actions/mkdocs-simple-action)

# What’s Changed

## :rocket: New

* Update action to use site_dir in the command line (#572) @athackst
* Don't copy by default, add option to enable instead. (#570) @athackst
* Rename config options to simplify (#569) @athackst
* Drop support for EOL Python 3.7 (#551) @athackst

## :bug: Bug Fixes

* Return ignore_hidden functionality (#573) @athackst

## :toolbox: Maintenance

* Use inline params dataclass (#571) @athackst
* Fix minor spacing issue (#568) @athackst
* Separate bump and push (#567) @athackst
* Minor updates to fix spacing. (#566) @athackst
* Fix unit tests and update to latest mkdocs (#557) @athackst

## Dependency Updates

<details>
<summary>7 changes</summary>

* Bump mkdocs-material from 9.1.21 to 9.2.3 (#565) @dependabot
* Bump pyfakefs from 5.2.3 to 5.2.4 (#563) @dependabot
* Bump mkdocs-awesome-pages-plugin from 2.9.1 to 2.9.2 (#562) @dependabot
* Bump click from 8.1.6 to 8.1.7 (#561) @dependabot
* Bump cairosvg from 2.7.0 to 2.7.1 (#560) @dependabot
* Bump mkdocs-macros-plugin from 1.0.2 to 1.0.4 (#559) @dependabot
* Bump mkdocs from 1.5.1 to 1.5.2 (#558) @dependabot
</details>

