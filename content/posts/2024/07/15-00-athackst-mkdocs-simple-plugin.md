---
title: MkDocs Simple action
date: 2024-07-15 00:52:04 +00:00
tags:
  - athackst
  - GitHub Actions
draft: false
repo: athackst/mkdocs-simple-plugin
marketplace: https://github.com/marketplace/actions/mkdocs-simple-action
version: v3.2.0
dependentsNumber: "44"
---


Version updated for **athackst/mkdocs-simple-plugin** to version **v3.2.0**.
- This action is used across all versions by **44** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mkdocs-simple-action) to find the latest changes.

## Release notes

# Get it

## Python

Install it with pip

```bash
pip install mkdocs-simple-plugin==3.2.0
```
See it on pypi: [https://pypi.org/project/mkdocs-simple-plugin](https://pypi.org/project/mkdocs-simple-plugin/3.2.0/)

## Docker

Pull it with docker

```bash
docker pull althack/mkdocs-simple-plugin:v3.2.0
```

See it on dockerhub: [https://hub.docker.com/repository/docker/althack/mkdocs-simple-plugin](https://hub.docker.com/repository/docker/althack/mkdocs-simple-plugin)

## Github

```yaml
- name: Build docs
  uses: athackst/mkdocs-simple-plugin:v3.2.0
```

See it in the actions marketplace: [https://github.com/marketplace/actions/mkdocs-simple-action](https://github.com/marketplace/actions/mkdocs-simple-action)

# What’s Changed

## :rocket: New

* Update plugin to be compatible with mkdocs ver 1.6.0+ (#693) @athackst

## :toolbox: Maintenance

* Add update task to vscode (#729) @athackst
* Change doc label to documentation (#728) @athackst
* Remove unneeded setup.py (#727) @athackst
* Update pylint settings in vscode (#726) @athackst
* Clean up CSpell settings (#725) @athackst
* Update docker requirements (#696) @athackst
* Add ignore-urls (#634) @athackst
* Update integration tests run script (#609) @athackst
* Don't cancel in progress docs (#608) @athackst
* Update semiliterate for better testing and add more tests. (#606) @athackst
* Change devcontainer to use image instead of file (#599) @athackst

## Dependency Updates

<details>
<summary>95 changes</summary>

* Bump docker/build-push-action from 6.2.0 to 6.3.0 (#730) @dependabot
* Bump mkdocs-material from 9.5.26 to 9.5.28 (#723) @dependabot
* Bump pillow from 10.3.0 to 10.4.0 (#722) @dependabot
* Bump docker/build-push-action from 5.4.0 to 6.2.0 (#721) @dependabot
* Bump mike from 2.1.1 to 2.1.2 (#720) @dependabot
* Update dependencies (#724) @athackst
* Bump docker/build-push-action from 5.3.0 to 5.4.0 (#713) @dependabot
* Bump typing-extensions from 4.12.1 to 4.12.2 (#712) @dependabot
* Bump mkdocs-material from 9.5.25 to 9.5.26 (#711) @dependabot
* Bump typing-extensions from 4.11.0 to 4.12.1 (#710) @dependabot
* Bump hatch from 1.10.0 to 1.12.0 (#708) @dependabot
* Bump jinja2 from 3.1.3 to 3.1.4 (#698) @dependabot
* Bump mkdocs-git-revision-date-localized-plugin from 1.2.5 to 1.2.6 (#709) @dependabot
* Bump docker/login-action from 3.1.0 to 3.2.0 (#707) @dependabot
* Bump mkdocs-material from 9.5.21 to 9.5.25 (#706) @dependabot
* Bump pyfakefs from 5.4.1 to 5.5.0 (#699) @dependabot
* Bump mkdocstrings from 0.25.0 to 0.25.1 (#697) @dependabot
* Bump pyfakefs from 5.3.5 to 5.4.1 (#680) @dependabot
* Bump typing-extensions from 4.10.0 to 4.11.0 (#677) @dependabot
* Bump mkdocstrings from 0.24.1 to 0.24.3 (#678) @dependabot
* Bump pillow from 10.2.0 to 10.3.0 (#672) @dependabot
* Bump mkdocs-material from 9.5.15 to 9.5.17 (#674) @dependabot
* Bump mkdocs-material from 9.5.12 to 9.5.15 (#671) @dependabot
* Bump docker/build-push-action from 5.1.0 to 5.3.0 (#669) @dependabot
* Bump docker/login-action from 3.0.0 to 3.1.0 (#668) @dependabot
* Bump hatch from 1.9.3 to 1.9.4 (#667) @dependabot
* Bump pymdown-extensions from 10.7 to 10.7.1 (#664) @dependabot
* Bump mkdocs-material from 9.5.10 to 9.5.12 (#663) @dependabot
* Bump mkdocstrings from 0.24.0 to 0.24.1 (#662) @dependabot
* Bump typing-extensions from 4.9.0 to 4.10.0 (#661) @dependabot
* Bump mkdocs-material from 9.5.9 to 9.5.10 (#659) @dependabot
* Bump mkdocs-material from 9.5.6 to 9.5.9 (#658) @dependabot
* Bump TimonVS/pr-labeler-action from 4.1.1 to 5.0.0 (#657) @dependabot
* Bump mkdocs-git-revision-date-localized-plugin from 1.2.2 to 1.2.4 (#654) @dependabot
* Bump markupsafe from 2.1.4 to 2.1.5 (#653) @dependabot
* Bump release-drafter/release-drafter from 5.25.0 to 6.0.0 (#652) @dependabot
* Bump pyfakefs from 5.3.4 to 5.3.5 (#651) @dependabot
* Bump mkdocs-material from 9.5.4 to 9.5.6 (#650) @dependabot
* Bump markupsafe from 2.1.3 to 2.1.4 (#646) @dependabot
* Bump hatch from 1.9.1 to 1.9.3 (#649) @dependabot
* Bump pyfakefs from 5.3.2 to 5.3.4 (#645) @dependabot
* Bump actions/cache from 3 to 4 (#643) @dependabot
* Bump mkdocs-material from 9.5.3 to 9.5.4 (#642) @dependabot
* Bump jinja2 from 3.1.2 to 3.1.3 (#641) @dependabot
* Bump pillow from 10.1.0 to 10.2.0 (#639) @dependabot
* Bump flake8 from 6.1.0 to 7.0.0 (#640) @dependabot
* Bump pymdown-extensions from 10.5 to 10.7 (#638) @dependabot
* Bump mkdocs-material from 9.5.2 to 9.5.3 (#636) @dependabot
* Bump hatch from 1.9.0 to 1.9.1 (#635) @dependabot
* Bump github/codeql-action from 2 to 3 (#630) @dependabot
* Bump mkdocs-git-revision-date-localized-plugin from 1.2.1 to 1.2.2 (#633) @dependabot
* Bump hatch from 1.8.0 to 1.9.0 (#632) @dependabot
* Bump mkdocs-material from 9.5.1 to 9.5.2 (#629) @dependabot
* Bump typing-extensions from 4.8.0 to 4.9.0 (#628) @dependabot
* Bump hatch from 1.7.0 to 1.8.0 (#627) @dependabot
* Bump mkdocs-material from 9.4.14 to 9.5.1 (#626) @dependabot
* Bump actions/setup-python from 4 to 5 (#624) @dependabot
* Bump pyfakefs from 5.3.1 to 5.3.2 (#623) @dependabot
* Bump mkdocs-material from 9.4.10 to 9.4.14 (#621) @dependabot
* Bump pymdown-extensions from 10.4 to 10.5 (#622) @dependabot
* Bump mkdocs-material from 9.4.9 to 9.4.10 (#618) @dependabot
* Bump mkdocs-material from 9.4.8 to 9.4.9 (#617) @dependabot
* Bump docker/build-push-action from 5.0.0 to 5.1.0 (#616) @dependabot
* Bump pyfakefs from 5.3.0 to 5.3.1 (#614) @dependabot
* Bump mkdocstrings from 0.23.0 to 0.24.0 (#613) @dependabot
* Bump pymdown-extensions from 10.3.1 to 10.4 (#612) @dependabot
* Bump mkdocs-material from 9.4.7 to 9.4.8 (#611) @dependabot
* Bump mike from 1.1.2 to 2.0.0 (#610) @dependabot
* Bump mkdocs-macros-plugin from 1.0.4 to 1.0.5 (#607) @dependabot
* Bump mkdocs-material from 9.4.6 to 9.4.7 (#605) @dependabot
* Bump pymdown-extensions from 10.3 to 10.3.1 (#604) @dependabot
* Bump release-drafter/release-drafter from 5.24.0 to 5.25.0 (#603) @dependabot
* Bump pillow from 10.0.1 to 10.1.0 (#602) @dependabot
* Bump mkdocs-material from 9.4.5 to 9.4.6 (#601) @dependabot
* Bump mkdocs-git-revision-date-localized-plugin from 1.2.0 to 1.2.1 (#600) @dependabot
* Bump pyfakefs from 5.2.4 to 5.3.0 (#598) @dependabot
* Bump mkdocs-material from 9.4.2 to 9.4.5 (#597) @dependabot
* Bump mkdocs-material from 9.4.1 to 9.4.2 (#594) @dependabot
* Bump mkdocs-material from 9.3.1 to 9.4.1 (#593) @dependabot
* Bump mkdocs-click from 0.8.0 to 0.8.1 (#592) @dependabot
* Bump mkdocs from 1.5.2 to 1.5.3 (#591) @dependabot
* Bump typing-extensions from 4.7.1 to 4.8.0 (#589) @dependabot
* Bump pillow from 10.0.0 to 10.0.1 (#588) @dependabot
* Bump mkdocs-material from 9.3.0 to 9.3.1 (#587) @dependabot
* Bump docker/login-action from 2.2.0 to 3.0.0 (#586) @dependabot
* Bump docker/build-push-action from 4.2.1 to 5.0.0 (#585) @dependabot
* Bump mkdocs-material from 9.2.8 to 9.3.0 (#584) @dependabot
* Bump docker/build-push-action from 4.1.1 to 4.2.1 (#583) @dependabot
* Bump mkdocs-material from 9.2.7 to 9.2.8 (#582) @dependabot
* Bump pymdown-extensions from 10.2.1 to 10.3 (#581) @dependabot
* Bump mkdocstrings from 0.22.0 to 0.23.0 (#580) @dependabot
* Bump mkdocs-material from 9.2.6 to 9.2.7 (#579) @dependabot
* Bump actions/checkout from 3 to 4 (#578) @dependabot
* Bump pymdown-extensions from 10.1 to 10.2.1 (#576) @dependabot
* Bump mkdocs-material from 9.2.3 to 9.2.6 (#577) @dependabot
</details>

