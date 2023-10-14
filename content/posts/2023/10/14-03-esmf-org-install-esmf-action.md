---
title: Install ESMF
date: 2023-10-14 03:17:35 +00:00
tags:
  - esmf-org
  - GitHub Actions
draft: false
repo: esmf-org/install-esmf-action
marketplace: https://github.com/marketplace/actions/install-esmf
version: v1.0.0
dependentsNumber: "2"
---


Version updated for **esmf-org/install-esmf-action** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-esmf) to find the latest changes.

## Release notes

## Overview
This is the initial release of the `install-esmf-action`. It simplifies the process of building and caching ESMF libraries and utilities on GitHub runners.  Once ESMF is installed on a GitHub runner it can be used to build and test ESMF, NUOPC, ESMX, and esmpy based applications in the GitHub Actions environment. It was designed to promote continuous integration (CI) and release testing of ESMF based applications in the GitHub environment.

## Features
- Download `latest` release, head of `develop`, or specific version of ESMF
- Configure ESMF build using environment variables, as outlined in the [ESMF User's Guide](https://earthsystemmodeling.org/doc/)
- Compute `esmf-cache-key` based on ESMF version, system setup, and 3rd party libraries
- Build ESMF using two jobs
- Cache / restore ESMF installation
- Set up environment with ESMF installation location

## Usage Example
```
    - name: Install ESMF
      uses: esmf-org/install-esmf-action@v1
      env:
        ESMF_NETCDF: nc-config
```

## New Contributors
- @danrosen25 creator and maintainer of `install-esmf-action`
