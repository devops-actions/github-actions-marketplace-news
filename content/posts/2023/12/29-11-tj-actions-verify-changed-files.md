---
title: Verify Changed files
date: 2023-12-29 11:14:42 +00:00
tags:
  - tj-actions
  - GitHub Actions
draft: false
repo: tj-actions/verify-changed-files
marketplace: https://github.com/marketplace/actions/verify-changed-files
version: v17
dependentsNumber: "2,145"
---


Version updated for **tj-actions/verify-changed-files** to version **v17**.
- This action is used across all versions by **2,145** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-changed-files) to find the latest changes.

## Release notes

# Changes in v17.0.0
## 🔥 🔥 BREAKING CHANGE 🔥 🔥 
A new `safe_output` input is now available to prevent outputting unsafe filename characters (Enabled by default). This would escape characters in the filename that could be used for command injection.

> [!NOTE]
> This can be disabled by setting the `safe_output` to false this comes with a recommendation to store all outputs generated in an environment variable first before using them.

#### Example
```yaml
...
      - name: Verify Changed files
        uses: tj-actions/verify-changed-files@v16
        id: verify-changed-files
        with:
          safe_output: false # set to false because we are using an environment variable to store the output and avoid command injection.
      
      - name: List all changed tracked and untracked files
        env:
          FILES_CHANGED: ${{ steps.verify-changed-files.outputs.changed_files }}
        run: |
          echo "Changed files: $FILES_CHANGED
...
```

## What's Changed
* Upgraded to v16.1.1 by @tj-actions-bot in https://github.com/tj-actions/verify-changed-files/pull/343
* chore(deps): update actions/checkout action to v4.1.1 by @renovate in https://github.com/tj-actions/verify-changed-files/pull/344
* Bump actions/checkout from 4.1.0 to 4.1.1 by @dependabot in https://github.com/tj-actions/verify-changed-files/pull/345
* chore(deps): update tj-actions/auto-doc action to v3.1.1 by @renovate in https://github.com/tj-actions/verify-changed-files/pull/346
* chore(deps): update tj-actions/auto-doc action to v3.2.0 by @renovate in https://github.com/tj-actions/verify-changed-files/pull/347
* chore(deps): update tj-actions/auto-doc action to v3.2.1 by @renovate in https://github.com/tj-actions/verify-changed-files/pull/348
* chore(deps): update tj-actions/auto-doc action to v3.3.0 by @renovate in https://github.com/tj-actions/verify-changed-files/pull/349
* chore(deps): update tj-actions/auto-doc action to v3.4.0 by @renovate in https://github.com/tj-actions/verify-changed-files/pull/350
* Updated README.md by @tj-actions-bot in https://github.com/tj-actions/verify-changed-files/pull/351
* Updated README.md by @tj-actions-bot in https://github.com/tj-actions/verify-changed-files/pull/352
* Updated README.md by @tj-actions-bot in https://github.com/tj-actions/verify-changed-files/pull/353
* chore(deps): update github/codeql-action action to v3 by @renovate in https://github.com/tj-actions/verify-changed-files/pull/354
* Updated README.md by @tj-actions-bot in https://github.com/tj-actions/verify-changed-files/pull/355
* chore: update entrypoint.sh by @jackton1 in https://github.com/tj-actions/verify-changed-files/pull/357


**Full Changelog**: https://github.com/tj-actions/verify-changed-files/compare/v16...v17.0.0

---


