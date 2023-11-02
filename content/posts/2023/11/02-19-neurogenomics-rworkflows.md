---
title: rworkflows
date: 2023-11-02 19:06:20 +00:00
tags:
  - neurogenomics
  - GitHub Actions
draft: false
repo: neurogenomics/rworkflows
marketplace: https://github.com/marketplace/actions/rworkflows
version: v1
dependentsNumber: "114"
---


Version updated for **neurogenomics/rworkflows** to version **v1**.
- This action is used across all versions by **114** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rworkflows) to find the latest changes.

## Release notes

# rworkflows 1.0.0

## New features

* Synchronise `rworkflows` package versioning with `rworkflows` action 
Release versioning.
* `use_vignette_docker`/`use_vignette_getstarted`
  - Autofill `package` arg if not provided.
  
## Bug fixes

* *inst/template/docker.Rmd*
  - Remove the need to include `construct_cont`, 
    as not everyone will have `rworkfows` installed on the machine where
    the vignette is being rendered.
* *use_vignette_docker*
  - Add *-autolink_bare_uris* bit to avoid CRAN check errors.
* Change `\itemize` --> `describe` to avoid CRAN check errors.
