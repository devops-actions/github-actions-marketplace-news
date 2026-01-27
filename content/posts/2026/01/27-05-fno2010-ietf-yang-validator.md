---
title: IETF YANG Validator
date: 2026-01-27 05:39:15 +00:00
tags:
  - fno2010
  - GitHub Actions
draft: false
repo: https://github.com/fno2010/ietf-yang-validator
marketplace: https://github.com/marketplace/actions/ietf-yang-validator
version: v1.2
dependentsNumber: "?"
---


Version updated for **https://github.com/fno2010/ietf-yang-validator** to version **v1.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ietf-yang-validator) to find the latest changes.

## Action Summary

The IETF YANG Validator GitHub Action automates the validation of YANG modules defined in IETF Internet drafts and RFCs. It extracts YANG modules, resolves dependencies, and validates them using either the YANG Catalog API or local validation tools such as pyang and yanglint. This action simplifies compliance checking, ensures module consistency, and provides detailed reports and GitHub annotations for efficient error tracking and resolution.

## Release notes

### What's Changed

This release fixes critical path resolution issues when running the IETF YANG Validator in Docker containers and GitHub Actions environments.

### Bug Fixes

- **Fix workspace path issues in CI** - The Docker entrypoint now uses an absolute path (`/app/src/main.py`) instead of a relative path, ensuring the script can be found regardless of the working directory set by GitHub Actions
- **Fix report generation location** - Validation reports now use the `GITHUB_WORKSPACE` environment variable to determine the output directory, ensuring reports are written to the correct location for artifact upload
- **Add fallback for local development** - When `GITHUB_WORKSPACE` is not available (e.g., local development), the system falls back to the current working directory

### Technical Details

**Problem**: GitHub Actions sets the working directory to `/github/workspace`, but the Dockerfile used a relative path `python src/main.py` for the entrypoint. This caused the script to not be found when the action was executed.

**Solution**: 
1. Changed [`Dockerfile`](Dockerfile:93) entrypoint to use absolute path: `python /app/src/main.py`
2. Modified [`src/main.py`](src/main.py:206-208) to use `GITHUB_WORKSPACE` environment variable for report generation

### Files Changed

- [`Dockerfile`](Dockerfile:93) - Updated entrypoint to use absolute path
- [`src/main.py`](src/main.py:206-208) - Updated report generation to use GITHUB_WORKSPACE

### Impact

This fix ensures:
- The GitHub Action works correctly in CI/CD pipelines
- Local file paths (like draft files) are resolved correctly
- Validation reports are written to the correct location for artifact upload
- The action maintains backward compatibility with local development environments
