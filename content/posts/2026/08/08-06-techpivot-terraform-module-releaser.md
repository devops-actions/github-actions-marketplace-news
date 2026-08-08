---
title: Terraform Module Releaser
date: 2026-08-08 06:03:17 +00:00
tags:
  - techpivot
  - GitHub Actions
draft: false
repo: https://github.com/techpivot/terraform-module-releaser
marketplace: https://github.com/marketplace/actions/terraform-module-releaser
version: v2.2.0
dependentsNumber: "33"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the management of Terraform modules within a monorepo, providing features like efficient module tagging, smart versioning, comprehensive wiki generation, release automation, and self-maintenance. It simplifies the process of maintaining Terraform modules by automating tasks such as generating Git tags, creating releases, and updating documentation. The action works seamlessly with GitHub.com and GHES environments, ensuring a smooth transition between cloud and on-premises deployments.
---


Version updated for **https://github.com/techpivot/terraform-module-releaser** to version **v2.2.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **33** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-module-releaser) to find the latest changes.

## Action Summary

This GitHub Action automates the management of Terraform modules within a monorepo, providing features like efficient module tagging, smart versioning, comprehensive wiki generation, release automation, and self-maintenance. It simplifies the process of maintaining Terraform modules by automating tasks such as generating Git tags, creating releases, and updating documentation. The action works seamlessly with GitHub.com and GHES environments, ensuring a smooth transition between cloud and on-premises deployments.

## What's Changed

### ✨ New Features

- **Self-Healing, Idempotent Releases** 🔁: Re-running a merged workflow now converges to the correct state instead of guessing. Previously the entire merge handler was gated on a single hidden marker in a pull request comment, which meant a deleted release could never be restored and a run that died between pushing a tag and creating its release was unrecoverable. Release state now lives in the release itself. @virgofx (#503)
  - A re-run never over-bumps a version or publishes a duplicate release.
  - A release you delete by hand is recreated at its original version, not a new one.
  - A run interrupted between the tag push and the release creation is repaired on re-run.
  - A tag that cannot be proven to belong to the current pull request is never claimed; it is left for its owning pull request to heal while the current one releases above it.
  - `changed-modules-map` gains an `action` field (`created`, `recovered`, `skipped`, or `none`) so downstream jobs can tell a fresh release apart from a no-op.

- **Quieter Pull Requests With No Changes** 🔇: New `hide-no-changes-pr-comment` input. When enabled, the "Release Plan" comment is collapsed rather than posted loudly on pull requests that change no Terraform modules, have no pending tag or release cleanup, and pass the wiki check. Defaults to `false`, so existing behavior is unchanged. @leetrout (#470)

### 🐛 Bug Fixes

- **Module terraform-docs Config Honored** 📄: Module-scoped `.terraform-docs.yml` files are now discovered and merged with the action's wiki-safe defaults instead of being removed from the workspace, so your formatting and content settings survive wiki generation. @virgofx (#430)

- **Wiki Validation Runs Before Merge** ✅: Wiki checks now run as a real preflight on open pull requests, with checkout failures and terraform-docs failures reported separately and per-module errors surfaced directly in the pull request comment. Broken wiki configuration is caught while the pull request is still open rather than at merge time. @virgofx (#430)

### 🛠 Improvements

- **Accurate Release Outputs** 🎯: `changed-modules-map.releaseTag` now always names a tag that actually exists. Previously it reported the optimistically computed next version even when nothing was published, so downstream jobs could resolve a ref that was never created.

- **Fewer API Calls On Open Pull Requests** ⚡: Pull request comments are no longer paginated on every event. Open pull request runs read no comments at all, and the remaining reads request 100 per page instead of the default 30, which meaningfully reduces rate-limit pressure on high-traffic monorepos.

### 📦 Dependencies

Consolidates 49 dependency updates (#431 through #501):

- **Security and runtime**: `brace-expansion` 5.0.5 → 5.0.9, `qs` 6.15.0 → 6.15.2, `ip-address` and `express-rate-limit`, `which` 6 → 7, `js-yaml` 4.2.0 → 4.3.0, `conventional-commits-parser` 6.4.0 → 7.1.0, `@actions/core`, `fast-uri`, `minimatch`, `p-limit`.
- **GitHub Actions**: `actions/checkout` 6 → 7, `actions/setup-node` 6 → 7, `actions/github-script` 8 → 9, `github/codeql-action`, `super-linter/super-linter`, `SonarSource/sonarqube-scan-action` 7 → 8.
- **Development tooling**: TypeScript, Vitest, Biome, esbuild, `@types/node` 25 → 26, `ts-deepmerge` 7 → 8, `hono`.

---

### 📌 Upgrade Notes

This release is backward compatible. No inputs changed, nothing was removed, and the action still runs on `node24`. Two behaviors are worth knowing about before you upgrade:

1. **`releaseTag` can now be `null`.** On merge runs, `changed-modules-map` is re-emitted with what was actually published. When a module was skipped or nothing was released, `releaseTag` is `null` and `action` is `"skipped"` or `"none"`. If you consume this output, branch on `action` before treating `releaseTag` as a newly published tag:

   ```bash
   echo '${{ steps.release.outputs.changed-modules-map }}' \
     | jq -r 'to_entries[] | select(.value.action == "created") | .value.releaseTag'
   ```

2. **Obsolete tag/release cleanup and wiki regeneration are now skipped when the checkout is stale.** If the base branch advances past a pull request's merge commit before its workflow runs, those steps are skipped with a warning rather than operating on an out-of-date view of the repository. This prevents a re-run of an older pull request from deleting tags, releases, and wiki pages for modules added since. It is self-correcting on the next merge.


###### Full Changelog: https://github.com/techpivot/terraform-module-releaser/compare/v2.1.0...v2.2.0
