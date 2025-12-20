---
title: Deadbolt JIT Access
date: 2025-12-20 05:33:36 +00:00
tags:
  - deadbolt-sh
  - GitHub Actions
draft: false
repo: https://github.com/deadbolt-sh/jit-action
marketplace: https://github.com/marketplace/actions/deadbolt-jit-access
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/deadbolt-sh/jit-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deadbolt-jit-access) to find the latest changes.

## Release notes

# 🔐 Deadbolt JIT Action v1.0.0

**The secure way to deploy from GitHub Actions - no permanent SSH keys required.**

## Highlights

- 🎫 **Zero Secrets** - Uses GitHub OIDC authentication, no tokens to store or rotate
- ⏱️ **Short-Lived Access** - SSH keys automatically expire (default: 5 minutes)
- 📋 **Full Audit Trail** - Every deployment logged with repo, branch, actor, and commit SHA
- 🛡️ **Defense in Depth** - IP restricted to GitHub Actions runners, command restrictions optional

## Quick Start
```yaml
permissions:
  id-token: write
  contents: read

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      
      - uses: deadbolt-sh/jit-action@v1
        id: ssh
        with:
          server_id: srv_abc123
      
      - run: rsync -avz -e "ssh -i ${{ steps.ssh.outputs.ssh_key_path }}" ./dist/ ${{ steps.ssh.outputs.username }}@${{ steps.ssh.outputs.host }}:/var/www/app/
```

## What's Included

| Feature | Description |
|---------|-------------|
| OIDC Authentication | Cryptographically verify GitHub Actions identity |
| Auto SSH Setup | Key saved, host added to known_hosts, config entry created |
| Multiple Access Levels | `deploy`, `sudo`, `readonly` |
| Configurable Duration | 60s to 3600s (default: 300s) |

## Inputs

| Input | Required | Default | Description |
|-------|----------|---------|-------------|
| `server_id` | ✅ | - | Your Deadbolt server ID |
| `duration` | | `300` | Access duration in seconds |
| `access_level` | | `deploy` | Permission level |
| `api_url` | | `https://api.deadbolt.sh` | API endpoint |

## Outputs

| Output | Description |
|--------|-------------|
| `ssh_key_path` | Path to temporary SSH key |
| `host` | Server hostname |
| `username` | SSH username |
| `session_id` | Audit session ID |
| `expires_at` | Expiration timestamp |

## Security

This action never stores secrets in your repository. Authentication flow:

1. GitHub generates short-lived OIDC token (contains repo, branch, actor)
2. Deadbolt verifies token cryptographically against GitHub's public keys
3. Deadbolt checks your OIDC policy (allowed repos, branches)
4. Short-lived SSH key returned (works only from GitHub Actions IPs)

## Requirements

- Deadbolt account with server registered
- OIDC policy configured for your repository
- `id-token: write` permission in workflow

## Documentation

- [Setup Guide](https://docs.deadbolt.sh/ci-cd/github-actions)
- [OIDC Policy Configuration](https://docs.deadbolt.sh/ci-cd/oidc-policies)
- [Security Best Practices](https://docs.deadbolt.sh/ci-cd/security)

## Feedback

Found a bug? Have a feature request? [Open an issue](https://github.com/deadbolt-sh/jit-action/issues)

---

**Full Changelog**: https://github.com/deadbolt-sh/jit-action/commits/v1.0.0
