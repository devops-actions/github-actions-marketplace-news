---
title: setup-atmos
date: 2025-11-22 05:14:00 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: https://github.com/cloudposse/github-action-setup-atmos
marketplace: https://github.com/marketplace/actions/setup-atmos
version: v2.0.2
dependentsNumber: "31"
---


Version updated for **https://github.com/cloudposse/github-action-setup-atmos** to version **v2.0.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **31** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-atmos) to find the latest changes.

## Release notes

<details>
  <summary>fix: Replace io.mv with copy+delete to fix EXDEV errors in DinD environments @jamengual (#106)</summary>
## Summary

This PR fixes the EXDEV (cross-device link not permitted) error that occurs when using this action in Docker-in-Docker (DinD) and other containerized environments.

Fixes #98

## Problem

In DinD environments (like ARC runners), the GitHub Actions temp directory (`/__w/_temp/`) and the installation target directory exist on different Docker filesystem layers. When the action attempts to use `io.mv()` (which calls `fs.renameSync()`), it fails with:

```
Error: EXDEV: cross-device link not permitted, rename '/__w/_temp/88be01d7-...' -> '/__w/_actions/cloudposse/github-action-setup-atmos/atmos/atmos'
```

This is a fundamental limitation of the rename system call - it cannot move files across different filesystems or device boundaries.

## Solution

This PR implements two fixes:

### 1. Replace `io.mv()` with copy+delete pattern

**File**: `src/installer.ts:218-223`

- **Before**: `await io.mv(downloadPath, toolPath)` - fails across device boundaries
- **After**: `await io.cp(downloadPath, toolPath)` + `await io.rmRF(downloadPath)` - works across all filesystems

This is the standard workaround for cross-device file operations and is used throughout the GitHub Actions ecosystem.

### 2. Add detection for pre-installed atmos

**Files**: `src/installer.ts:45-75`, `src/installer.ts:243-268`

Added `checkExistingAtmosInstallation()` function that:
- Checks if atmos is already available in PATH
- Retrieves the installed version
- Uses the existing installation if it satisfies the requested version spec
- Falls back to downloading if version doesn't match or not found

This benefits users who:
- Pre-install atmos in custom runner images
- Use the action in environments with atmos already available
- Want to reduce unnecessary downloads and installation time

## Benefits

- ✅ Works reliably in DinD environments (ARC runners, containerized CI/CD)
- ✅ Reduces unnecessary downloads when atmos is pre-installed
- ✅ Maintains full backward compatibility
- ✅ Proper error handling with debug logging
- ✅ No breaking changes to the action interface

## Testing Recommendations

1. **DinD Environment**: Test in ARC DinD mode runner
2. **Pre-installed atmos**: Test with atmos already in PATH
3. **Version matching**: Test with version specs (latest, specific versions, semver ranges)
4. **Fallback behavior**: Test when existing version doesn't satisfy requirement
5. **Standard runner**: Verify it still works in standard GitHub-hosted runners

## Technical Details

The `io.mv()` function from `@actions/io` uses the underlying `ioUtil.rename()` method, which relies on the OS-level rename syscall. This syscall has the limitation that it cannot move files across different filesystem mount points or devices.

In Docker-in-Docker:
- Temp directory: `/__w/_temp/` (on one overlay filesystem)
- Installation directory: `/__w/_actions/...` (on a different overlay filesystem)
- Result: `EXDEV` error when attempting rename

The copy+delete pattern avoids this limitation by performing two separate operations, each within their respective filesystems.

## Related Issues

- Fixes #98 
- Related discussion in cloudposse/github-action-atmos-terraform-plan about DinD compatibility
</details>


## 🤖 Automatic Updates

<details>
  <summary>Replace Makefile with atmos.yaml @osterman (#105)</summary>
## what
- Remove `Makefile`
- Add `atmos.yaml`

## why
- Replace `build-harness` with `atmos` for readme genration

## References
* DEV-3229 Migrate from build-harness to atmos

</details>

<details>
  <summary>Replace Makefile with atmos.yaml @osterman (#102)</summary>
## what
- Remove `Makefile`
- Add `atmos.yaml`

## why
- Replace `build-harness` with `atmos` for readme genration

## References
* DEV-3229 Migrate from build-harness to atmos

</details>

