---
title: Ansible SecOps Linter
date: 2026-07-12 14:44:45 +00:00
tags:
  - semx
  - GitHub Actions
draft: false
repo: https://github.com/semx/ansible-secops-linter
marketplace: https://github.com/marketplace/actions/ansible-secops-linter
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/semx/ansible-secops-linter** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ansible-secops-linter) to find the latest changes.

## What's Changed

First release of **ansible-secops-linter** — security-focused static analysis for Ansible playbooks and roles.

**Checks:** disabled TLS/host-key verification, hardcoded credentials, remote-script-to-shell execution, world-writable file modes, disabled package signature checks, and secret-handling tasks missing `no_log`. Text and SARIF output.

**Use as a GitHub Action:**
```yaml
- uses: semx/ansible-secops-linter@v0.1.0
  with:
    paths: playbooks roles
    fail-on: error
```

**Use as a CLI:**
```bash
pip install git+https://github.com/semx/ansible-secops-linter.git
ansible-secops-linter lint path/to/playbooks
```
