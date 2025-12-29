---
title: Deploy to Nomad via SSH
date: 2025-12-29 05:32:50 +00:00
tags:
  - dpfisterer
  - GitHub Actions
draft: false
repo: https://github.com/dpfisterer/ssh-deploy-to-nomad
marketplace: https://github.com/marketplace/actions/deploy-to-nomad-via-ssh
version: v1.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/dpfisterer/ssh-deploy-to-nomad** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-nomad-via-ssh) to find the latest changes.

## Action Summary

The Nomad Deploy SSH Action is a GitHub Action designed to streamline the deployment, management, and verification of Nomad jobs via secure SSH. It automates tasks such as starting, stopping, restarting, and checking the status of Nomad jobs, while also providing automatic environment variable substitution for HCL templates and configuration files. This action simplifies the deployment process by eliminating the need for Docker and ensuring reliable deployment verification.

## Release notes

## 🎉 New Feature: Template File Variable Substitution

You can now use `[[VAR_NAME]]` placeholders directly in your Nomad template files! This enables dynamic job names, environment-specific metadata, and more flexible deployments.

### ✨ What's New

- **Template file substitution**: Use `[[VAR_NAME]]` in template files for dynamic job names and metadata
- **Dual file processing**: Both template and variables files support variable substitution
- **Smart substitution**: 
  - Template files: Raw value substitution (no quoting) - perfect for job names
  - Variables files: Type-aware substitution (automatic quoting for strings)

### 📖 Example Usage

**Template file:**
```hcl
job "[[SERVICE_NAME]]-[[ENVIRONMENT]]" {
  meta {
    version = "[[VERSION]]"
    git_sha = "[[GIT_SHA]]"
  }
  # ... rest of job
}
```

**GitHub Workflow:**
```yaml
env-vars: |
  SERVICE_NAME: my-api
  ENVIRONMENT: production
  VERSION: 1.0.0
  GIT_SHA: ${{ github.sha }}
```

**Result:** Creates a Nomad job named `my-api-production`

### 📚 Documentation

- [TEMPLATE_SUBSTITUTION.md](TEMPLATE_SUBSTITUTION.md) - Comprehensive guide
- [examples/dynamic-job-names.md](examples/dynamic-job-names.md) - Full workflow example
- [examples/quick-example.md](examples/quick-example.md) - Quick start guide

### 🧪 Testing

- New test suite: `test/test-template-substitution.sh`
- All existing tests pass
- Verified with multiple deployment scenarios

### 🔧 Technical Details

- Refactored `deploy.sh` with reusable `substitute_variables()` function
- Creates temporary files for both template (`.tmp`) and variables (`.tmp`)
- Maintains backward compatibility with existing workflows

### 📦 Installation

```yaml
- uses: dpfisterer/ssh-deploy-to-nomad@v1.2.0
```

Or use the major version tag for automatic updates:
```yaml
- uses: dpfisterer/ssh-deploy-to-nomad@v1
```
