---
title: Play Ansible Playbook
date: 2026-03-16 06:13:43 +00:00
tags:
  - arillso
  - GitHub Actions
draft: false
repo: https://github.com/arillso/action.playbook
marketplace: https://github.com/marketplace/actions/play-ansible-playbook
version: 0.5.0
dependentsNumber: "158"
actionType: Docker
---


Version updated for **https://github.com/arillso/action.playbook** to version **0.5.0**.
- This action is used across all versions by **158** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/play-ansible-playbook) to find the latest changes.

## Action Summary

The "Play Ansible Playbook" GitHub Action automates the execution of Ansible playbooks within GitHub Actions workflows, streamlining infrastructure and configuration management tasks. It supports key features like Ansible Galaxy integration, secure SSH authentication, Ansible Vault handling, and flexible configuration options for inventory, variables, and tags. This action simplifies complex deployment processes, enhances automation, and provides robust tools for managing infrastructure as code.

## Release notes


### Added

- `known_hosts` input for SSH host key verification
- `dry_run` input as alias for `--check --diff` mode
- Action outputs for `status` and `exit_code`
- Auto-detection of Galaxy requirements file (`requirements.yml` / `requirements.yaml`)
- GitHub Step Summary with Ansible execution results
- `vault_password_file` input — auto-creates vault password file from secret
- Retry mechanism for playbook execution via `retries` and `retry_delay` inputs
- Optional ansible-lint pre-check via `lint` input
- `output_file` input to capture Ansible stdout to a file
- Support for multiple SSH keys via `additional_private_keys` input
- SSH agent support for bastion/proxy host connections — private keys are now loaded into `ssh-agent`, making them available to `ProxyCommand` and multi-hop SSH
- Passphrase-protected SSH key support via `private_key_passphrase` input using `SSH_ASKPASS`
- Multiline YAML syntax for `inventory`, `playbook`, `extra_vars`, and `module_path` inputs (closes #18)
- `output_callback` input to configure the Ansible stdout callback plugin
- Comprehensive unit test suite (`main_test.go`) covering parameter validation, SSH agent lifecycle, passphrase handling, and input normalization
- Comprehensive action input tests for all new features
- `CONTRIBUTING.md` with development guidelines
- Tooling configs: `.gitleaks.toml`, `.grype.yaml`, `.trivy.yaml`, `.checkov.yml`, `.pre-commit-config.yaml`, `.secretlintrc.json`, `.markdownlint.json`, `.markdown-link-check.json`, `.jscpd.json`, `.kics.json`

### Changed

- **Major:** Upgraded `go.ansible` from v1.x to v2.0.0
- Ansible exit codes are now passed through to the GitHub Action exit code
- SSH agent failure is now a hard error instead of silent fallback
- Pinned Docker image tag in `action.yml` from `latest` to `0.4`
- Renamed `callback_whitelist` to `callbacks_enabled` (deprecated alias still supported)
- Migrated CI/CD workflows to reusable `arillso/.github` workflows
- Modernized Makefile with structured targets
- Updated Dockerfile builder to Go 1.26
- Stripped binary build (`-ldflags="-s -w"`) for smaller image size
- Extracted CLI flags to package-level `appFlags` variable for testability

### Removed

- Removed unused flags: `module-name`, `invalidate-cache`, `requirements`, `module-default`, `metadata-export`
- Removed `parseModuleDefaults` helper function

### Updated

- `arillso/ansible` Docker image to v2.20.3
- `github.com/urfave/cli/v3` from v3.6.1 to v3.7.0
- GitHub Actions dependencies (v4, v6, v7)
- `golang:alpine` Docker digest


