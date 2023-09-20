---
title: Labeler
date: 2023-09-20 19:10:49 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: actions/labeler
marketplace: https://github.com/marketplace/actions/labeler
version: v5.0.0-beta.1
dependentsNumber: "50,065"
---


Version updated for **actions/labeler** to version **v5.0.0-beta.1**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **50,065** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/labeler) to find the latest changes.

## Release notes

## What's Changed
In scope of this beta release, the structure of the configuration file (`.github/labeler.yml`) was changed from
```yml
LabelName:
- any:
  - changed-files: ['list', 'of', 'globs']
  - base-branch: ['list', 'of', 'regexps']
  - head-branch: ['list', 'of', 'regexps']
- all:
  - changed-files: ['list', 'of', 'globs']
  - base-branch: ['list', 'of', 'regexps']
  - head-branch: ['list', 'of', 'regexps']
```
to
```yml
LabelName:
- any:
  - changed-files: 
    - AnyGlobToAnyFile: ['list', 'of', 'globs']
    - AnyGlobToAllFiles: ['list', 'of', 'globs']
    - AllGlobsToAnyFile: ['list', 'of', 'globs']
    - AllGlobsToAllFiles: ['list', 'of', 'globs']
  - base-branch: ['list', 'of', 'regexps']
  - head-branch: ['list', 'of', 'regexps']
- all:
  - changed-files:
    - AnyGlobToAnyFile: ['list', 'of', 'globs']
    - AnyGlobToAllFiles: ['list', 'of', 'globs']
    - AllGlobsToAnyFile: ['list', 'of', 'globs']
    - AllGlobsToAllFiles: ['list', 'of', 'globs']
  - base-branch: ['list', 'of', 'regexps']
  - head-branch: ['list', 'of', 'regexps']
```

This is a beta version and we would appreciate it if you could provide us with your feedback. If you have any questions, ideas or concerns, please share them in the [corresponding issue](https://github.com/actions/labeler/issues/575).

### Details
In the implementation of the alpha version there were two options for changed-files: 
1) `any` (ANY glob must match against ANY changed file) and
2) `all` (ALL globs must match against ALL changed files). 

In scope of this PR, we expanded this functionality and provided the following combinations:
1) `AnyGlobToAnyFile` - ANY glob must match against ANY changed file
2) `AllGlobsToAnyFile` - ALL globs must match against ANY changed file
3) `AnyGlobToAllFiles` - ANY glob must match against ALL changed files
4) `AllGlobsToAllFiles` - ALL globs must match against ALL changed files

### How do the `any` and `all` top-level keys work?
Top-level keys (`any` and `all`) do not affect the behaviour of `changed-files` and bind options (`changed-files`, `base-branch`, `head-branch`) in the following ways:
1) `all`: all of the provided options (`changed-files`, `base-branch`, etc.) must match for the label to be applied.
2) `any`: any of the provided options (`changed-files`, `base-branch`, etc.) must match for the label to be applied.

If an option is specified without a top-level key, it will default to any.

### Usage example:
```yml
# Add the `frontend` label to any change to any *.js files as long as the `main.js` hasn't been changed and the PR is open against the `main` branch
frontend:
- all:
  - changed-files: 
    - AnyGlobToAnyFile: ['src/**/*.js']
    - AllGlobsToAllFiles: ['!src/main.js']
  - base-branch: 'main'
```


**Full Changelog**: https://github.com/actions/labeler/compare/v5.0.0-alpha.1...v5.0.0-beta.1
