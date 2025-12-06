---
title: Tiangolos Latest Changes
date: 2024-08-26 08:46:43 +00:00
tags:
  - tiangolo
  - GitHub Actions
draft: false
repo: tiangolo/latest-changes
marketplace: https://github.com/marketplace/actions/tiangolo-s-latest-changes
version: 0.3.1
dependentsNumber: "41"
---


Version updated for **tiangolo/latest-changes** to version **0.3.1**.
- This action is used across all versions by **41** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tiangolo-s-latest-changes) to find the latest changes.

## Release notes

Now you can (and should) use the native GitHub Action directly, as in:

```yaml
...
      - uses: tiangolo/latest-changes@0.3.1
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
```

instead of using the Docker image:

```yaml
...
      - uses: docker://tiangolo/latest-changes:0.3.1
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
```

This way, Dependabot will be able to send you PRs updating the version automatically. 🚀

The internal code and build setup was refactored so that the native GitHub Action still re-uses a prebuilt Docker image, so it's still fast. 😎

#### Fixes

* 🐛 Fix race condition with retries, when more than one latest-changes is running. PR [#69](https://github.com/tiangolo/latest-changes/pull/69) by [@tiangolo](https://github.com/tiangolo).

#### Refactors

* ♻️ Make using the native GitHub Action re-use the existing Docker image instead of building from scratch. PR [#70](https://github.com/tiangolo/latest-changes/pull/70) by [@tiangolo](https://github.com/tiangolo).

#### Docs

* 📝 Update README docs for token permissions. PR [#68](https://github.com/tiangolo/latest-changes/pull/68) by [@tiangolo](https://github.com/tiangolo).

#### Internal

* ⬆ Update httpx requirement from <0.26.0,>=0.15.5 to >=0.15.5,<0.28.0. PR [#65](https://github.com/tiangolo/latest-changes/pull/65) by [@dependabot[bot]](https://github.com/apps/dependabot).
* ⬆ Bump actions/cache from 3 to 4. PR [#64](https://github.com/tiangolo/latest-changes/pull/64) by [@dependabot[bot]](https://github.com/apps/dependabot).
* ⬆ Bump actions/upload-artifact from 3 to 4. PR [#61](https://github.com/tiangolo/latest-changes/pull/61) by [@dependabot[bot]](https://github.com/apps/dependabot).
* ⬆ Bump actions/setup-python from 4 to 5. PR [#60](https://github.com/tiangolo/latest-changes/pull/60) by [@dependabot[bot]](https://github.com/apps/dependabot).
* 🔧 Add GitHub templates for discussions and issues, and security policy. PR [#67](https://github.com/tiangolo/latest-changes/pull/67) by [@alejsdev](https://github.com/alejsdev).
