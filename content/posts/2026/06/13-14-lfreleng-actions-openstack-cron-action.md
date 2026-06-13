---
title: ☁️ OpenStack Cron Cleanup
date: 2026-06-13 14:47:24 +00:00
tags:
  - lfreleng-actions
  - GitHub Actions
draft: false
repo: https://github.com/lfreleng-actions/openstack-cron-action
marketplace: https://github.com/marketplace/actions/openstack-cron-cleanup
version: v0.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/lfreleng-actions/openstack-cron-action** to version **v0.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openstack-cron-cleanup) to find the latest changes.

## What's Changed

* No changes

## Links
- [Submit bugs/feature requests](https://github.com/lfreleng-actions/openstack-cron-action/issues)

---

## What's Changed
* fix: Add base64 password decoding for OpenStack auth by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/1
* feat: Add smart image cleanup functionality by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/3
* Feat: Add standard workflows and configurations by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/4
* Feat: Add debug mode and comprehensive cleanup summary by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/2
* Chore: Bump release-drafter/release-drafter from 6.1.0 to 6.1.1 by @dependabot[bot] in https://github.com/lfreleng-actions/openstack-cron-action/pull/5
* Chore: Bump actions/checkout from 4.2.2 to 6.0.1 by @dependabot[bot] in https://github.com/lfreleng-actions/openstack-cron-action/pull/6
* Chore: Bump actions/setup-python from 5.3.0 to 6.1.0 by @dependabot[bot] in https://github.com/lfreleng-actions/openstack-cron-action/pull/7
* Fix: Add error handling and retry logic to protect-images by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/8
* Fix: Properly handle auth test with set -e by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/9
* Fix: Add || true to all arithmetic operations to prevent set -e exit by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/10
* Fix: Handle lftools stack delete-stale API bug gracefully by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/11
* Fix: Add enable_debug input and pass DEBUG env to all scripts by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/12
* Fix: Handle server not found error gracefully by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/13
* Fix: Use server ID instead of name to handle duplicates by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/14
* Fix: Bypass lftools and use OpenStack CLI directly by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/15
* Add lint workflow by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/20
* Fix: Resolve all pre-commit lint issues by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/21
* Fix: Add YAML document start and simplify long line by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/22
* fix: capture deleted image count from lftools output by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/25
* fix: add missing step IDs and fix summary heredoc by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/26
* fix: smart cleanup curl missing -L and multi-word name parsing by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/27
* fix: use JSON output for image list to handle multi-word names by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/28
* fix: add debug logging for JSON column names in smart cleanup by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/29
* fix: extract date from image name instead of missing JSON field by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/30
* fix: only use current images from cloud-images.rst, not historical inventory by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/31
* fix: set shared images to private so lftools can delete them by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/32
* fix: handle multi-line output from openstack -f value format by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/33
* fix: delete images directly in smart cleanup instead of deferring to lftools by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/34
* fix: scan jenkins-config/ for active IMAGE_NAME references by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/35
* Chore: align with lfreleng-actions standards by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/47
* CI(actions): Bump lfit/releng-reusable-workflows/.github/workflows/reuse-openssf-scorecard.yaml from 0.3.4 to 0.4.0 by @dependabot[bot] in https://github.com/lfreleng-actions/openstack-cron-action/pull/55
* Docs: update org references from askb to lfreleng-actions by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/51
* CI(actions): Bump github/codeql-action from 4.36.0 to 4.36.1 by @dependabot[bot] in https://github.com/lfreleng-actions/openstack-cron-action/pull/53
* CI(actions): Bump lfit/releng-reusable-workflows/.github/workflows/reuse-verify-github-actions.yaml from 0.2.28 to 0.4.0 by @dependabot[bot] in https://github.com/lfreleng-actions/openstack-cron-action/pull/52
* CI(actions): Bump step-security/harden-runner from 2.14.0 to 2.19.4 by @dependabot[bot] in https://github.com/lfreleng-actions/openstack-cron-action/pull/50
* CI(actions): Bump actions/setup-python from 5.3.0 to 6.2.0 by @dependabot[bot] in https://github.com/lfreleng-actions/openstack-cron-action/pull/19
* CI(actions): Bump actions/checkout from 4.2.2 to 6.0.3 by @dependabot[bot] in https://github.com/lfreleng-actions/openstack-cron-action/pull/54
* Fix: mitigate credential exposure, GITHUB_ENV injection, and script injection by @askb in https://github.com/lfreleng-actions/openstack-cron-action/pull/59
* Fix: resolve zizmor findings and sync workflows by @ModeSevenIndustrialSolutions in https://github.com/lfreleng-actions/openstack-cron-action/pull/60

## New Contributors
* @askb made their first contribution in https://github.com/lfreleng-actions/openstack-cron-action/pull/1
* @dependabot[bot] made their first contribution in https://github.com/lfreleng-actions/openstack-cron-action/pull/5
* @ModeSevenIndustrialSolutions made their first contribution in https://github.com/lfreleng-actions/openstack-cron-action/pull/60

**Full Changelog**: https://github.com/lfreleng-actions/openstack-cron-action/commits/v0.1.0
