---
title: Setup Julia environment
date: 2024-07-22 00:52:25 +00:00
tags:
  - julia-actions
  - GitHub Actions
draft: false
repo: julia-actions/setup-julia
marketplace: https://github.com/marketplace/actions/setup-julia-environment
version: v2.3.0
dependentsNumber: "22,102"
---


Version updated for **julia-actions/setup-julia** to version **v2.3.0**.
- This action is used across all versions by **22,102** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-julia-environment) to find the latest changes.

## Release notes

## What's Changed

* If the user provides `default` as the value of the `arch` input, use the runner machine's architecture by @DilumAluthge in https://github.com/julia-actions/setup-julia/pull/263
* Improve the error logging for the case of Julia 1.6 or 1.7 on Apple Silicon (`macos-latest` or `macos-14`) by @DilumAluthge in https://github.com/julia-actions/setup-julia/pull/261
* Improve example version instructions. Add info about "lts" if user specifies 1.6 explicitly by @IanButterworth in https://github.com/julia-actions/setup-julia/pull/265
* Always print an error message, never error silently by @DilumAluthge in https://github.com/julia-actions/setup-julia/pull/262

### Other changes:

* Update README.md by @ViralBShah in https://github.com/julia-actions/setup-julia/pull/256
* CI: don't instruct the user to do `npm run format` by @DilumAluthge in https://github.com/julia-actions/setup-julia/pull/267
* `package.json`: change version number from `2.2.0` to `2.3.0` by @DilumAluthge in https://github.com/julia-actions/setup-julia/pull/271

### Dependency updates:

* Bump @types/node from 20.14.6 to 20.14.11 by @dependabot in https://github.com/julia-actions/setup-julia/pull/266
* Bump bin from `31b4b50` to `e564658` by @dependabot in https://github.com/julia-actions/setup-julia/pull/259
* Bump typescript from 5.4.5 to 5.5.3 by @dependabot in https://github.com/julia-actions/setup-julia/pull/258
* Bump semver from 7.6.2 to 7.6.3 by @dependabot in https://github.com/julia-actions/setup-julia/pull/270
* Bump ts-jest from 29.1.5 to 29.2.3 by @dependabot in https://github.com/julia-actions/setup-julia/pull/268
* Bump prettier from 3.3.2 to 3.3.3 by @dependabot in https://github.com/julia-actions/setup-julia/pull/269

**Full Changelog**: https://github.com/julia-actions/setup-julia/compare/v2.2.0...v2.3.0
