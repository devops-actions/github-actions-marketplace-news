---
title: Lychee Broken Link Checker
date: 2024-10-08 17:03:45 +00:00
tags:
  - lycheeverse
  - GitHub Actions
draft: false
repo: lycheeverse/lychee-action
marketplace: https://github.com/marketplace/actions/lychee-broken-link-checker
version: v2.0.0
dependentsNumber: "18,746"
---


Version updated for **lycheeverse/lychee-action** to version **v2.0.0**.
- This action is used across all versions by **18,746** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lychee-broken-link-checker) to find the latest changes.

## Release notes

## Breaking Changes

**Note:** This release improves the action's robustness by changing default behaviors. Changes are only required if you want to opt out of the new failure conditions. Most users won't need to modify their existing configurations.

### Fail pipeline on error by default

We've changed the default behavior: pipelines will now fail on broken links automatically. This addresses user feedback that not failing on broken links was unexpected (see [issue #71](https://github.com/lycheeverse/lychee-action/issues/71)).

**What you need to do:**
- Update to version 2 of this action to apply this change.
- Users of the `lychee-action@master` branch don't need to make any changes, as `fail: true` has been the default there for a while.
- If you prefer the old behavior, explicitly set `fail` to `false` when updating:

```yaml
- name: Link Checker
  id: lychee
  uses: lycheeverse/lychee-action@v2
  with:
    fail: false  # Don't fail action on broken links
```

### Fail pipeline if no links were found

Similar to the above change, we now fail the pipeline if no links are found during a run. This helps warn users about potential configuration issues.

**What you need to do:**
- If you expect links to be found in your pipeline run, you don't need to do anything.
- If you expect no links in your pipeline run, you can opt out like this:

```yaml
- name: Link Checker
  id: lychee
  uses: lycheeverse/lychee-action@v2
  with:
    failIfEmpty: false  # Don't fail action if no links were found
```

For a more detailed description of the technical aspects behind these changes, please see the full changelog below.

## What's Changed
* feat: change to use the full version tag with v-* prefix by @kemingy in https://github.com/lycheeverse/lychee-action/pull/204
* Add `failIfEmpty` argument (fixes #84) by @mre in https://github.com/lycheeverse/lychee-action/pull/86
* Fail pipeline on error by default (fixes #71) by @mre in https://github.com/lycheeverse/lychee-action/pull/85
* Exit in case output is set in args and action input by @mre in https://github.com/lycheeverse/lychee-action/pull/227
* v1 will automatically use latest version by @jacobdalamb in https://github.com/lycheeverse/lychee-action/pull/228
* Remove unneeded text by @jacobdalamb in https://github.com/lycheeverse/lychee-action/pull/229
* Clarify README.md defaults by @paddyroddy in https://github.com/lycheeverse/lychee-action/pull/230
* Adjust for new asset naming scheme by @dscho in https://github.com/lycheeverse/lychee-action/pull/234
* Test various lychee versions by @mre in https://github.com/lycheeverse/lychee-action/pull/235
* Better cleanup of old lychee assets by @mre in https://github.com/lycheeverse/lychee-action/pull/237
* Bump peter-evans/create-issue-from-file from v4 to v5 by @AndreiCherniaev in https://github.com/lycheeverse/lychee-action/pull/241
* Remove dots from table by @AndreiCherniaev in https://github.com/lycheeverse/lychee-action/pull/242
* README: update actions/cache to v4 by @sebastiaanspeck in https://github.com/lycheeverse/lychee-action/pull/243
* Set exit_code correctly as output by @sebastiaanspeck in https://github.com/lycheeverse/lychee-action/pull/245
* action: fix failing CI by @sebastiaanspeck in https://github.com/lycheeverse/lychee-action/pull/246
* Split up steps in action by @mre in https://github.com/lycheeverse/lychee-action/pull/248
* Bump version to 0.16.x, respect new tag names by @mre in https://github.com/lycheeverse/lychee-action/pull/249
* Test latest lychee version tag by @mre in https://github.com/lycheeverse/lychee-action/pull/236

## New Contributors
* @kemingy made their first contribution in https://github.com/lycheeverse/lychee-action/pull/204
* @paddyroddy made their first contribution in https://github.com/lycheeverse/lychee-action/pull/230
* @dscho made their first contribution in https://github.com/lycheeverse/lychee-action/pull/234
* @AndreiCherniaev made their first contribution in https://github.com/lycheeverse/lychee-action/pull/241
* @sebastiaanspeck made their first contribution in https://github.com/lycheeverse/lychee-action/pull/243

**Full Changelog**: https://github.com/lycheeverse/lychee-action/compare/v1...v1.11.0
