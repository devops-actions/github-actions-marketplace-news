---
title: Veracode DAST Action
date: 2026-01-24 13:35:54 +00:00
tags:
  - veracode
  - GitHub Actions
draft: false
repo: https://github.com/veracode/veracode-dast-action
marketplace: https://github.com/marketplace/actions/veracode-dast-action
version: v0.0.6
dependentsNumber: "1"
---


Version updated for **https://github.com/veracode/veracode-dast-action** to version **v0.0.6**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veracode-dast-action) to find the latest changes.

## Action Summary

The Veracode DAST Action automates tasks related to Dynamic Application Security Testing (DAST) scans within GitHub Actions. It allows users to start preconfigured DAST scans on the Veracode platform and retrieve scan findings, automatically generating or updating GitHub issues based on the results. This action streamlines security testing workflows by enabling seamless integration of DAST scans with GitHub repositories and issue tracking.

## Release notes

### 🎉 New Features

#### Dual Functionality Support
This release introduces a major enhancement that extends the action to support two distinct operation modes:

1. **Start Scan Mode** (`action_type: start-scan`) - The original functionality to kick off Veracode DAST scans
2. **Load Results Mode** (`action_type: load-results`) - NEW: Automatically download DAST findings and create/update GitHub issues

#### Load Results Functionality
The new `load-results` mode provides comprehensive issue management for DAST findings:

- **Automatic Issue Creation**: Creates GitHub issues for new DAST findings
- **Issue Lifecycle Management**: 
  - Automatically opens/closes issues based on finding status (OPEN/CLOSED)
  - Handles resolution status (APPROVED/REJECTED)
  - Closes issues when findings are no longer present in scan results
- **Annotation Support**: 
  - Converts Veracode annotations (APPROVED, REJECTED, NETENV, etc.) to GitHub issue comments
  - Prevents duplicate comments with intelligent duplicate detection
  - Automatically closes/reopens issues based on annotation actions
- **Smart Duplicate Detection**: Uses `[VID:issue_id]` format to identify and update existing issues

#### Enhanced Labeling System
- **Severity Labels**: Updated to match `veracode-flaws-to-issues` format:
  - `VeracodeFlaw: Very High` (severity 5)
  - `VeracodeFlaw: High` (severity 4)
  - `VeracodeFlaw: Medium` (severity 3)
  - `VeracodeFlaw: Low` (severity 2)
  - `VeracodeFlaw: Very Low` (severity 1)
  - `VeracodeFlaw: Informational` (severity 0)
- **CWE Labels**: Automatically creates `CWE-{id}` labels for each vulnerability type
- **DAST Label**: Adds `veracode-dast` label to all DAST findings

### 📝 New Parameters

- **`action_type`** (required): Choose between `start-scan` or `load-results`
- **`profile_name`** (required for `load-results`): Veracode Application Profile Name to fetch findings from

### 🔧 Code Improvements

- **Restructured Codebase**: 
  - Moved scan functionality to `src/scan/` folder
  - Created new `src/results/` folder for results processing
  - Maintained shared `api/`, `namespaces/`, and `services/` folders
- **Enhanced Authentication**: Fixed HMAC authentication for all API calls
- **Better Error Handling**: Improved error messages and debugging information
- **URL Encoding**: Properly handles profile names with special characters and spaces

### 📚 Documentation

- **Updated README**: Comprehensive documentation for both action types
- **Usage Examples**: Added examples for both `start-scan` and `load-results` modes
- **Feature Documentation**: Detailed explanation of issue lifecycle and annotation handling

### 🐛 Bug Fixes

- Fixed authentication issues with Veracode API calls
- Fixed URL encoding for profile names with spaces
- Improved error handling for API responses

### ⚠️ Breaking Changes

- **`action_type` parameter is now required**: All workflows must specify either `start-scan` or `load-results`
- **Conditional parameters**: 
  - `dast_config_file_name` is now only required for `start-scan`
  - `profile_name` is now required for `load-results`
- **Label format changed**: Severity labels now use `VeracodeFlaw: {Severity}` format instead of `severity-{level}`

### 🔄 Migration Guide

To migrate from v1.x to v2.0:

1. **For existing start-scan workflows**, add `action_type: start-scan`:
   ```yaml
   - uses: veracode/veracode-dast-action@v2
     with:
       action_type: start-scan
       # ... rest of your existing parameters
   ```

2. **For new load-results workflows**, use:
   ```yaml
   - uses: veracode/veracode-dast-action@v2
     with:
       action_type: load-results
       profile_name: YourApplicationName
       # ... rest of parameters
   ```

3. **Update label filters** if you're filtering by severity labels - the format has changed
