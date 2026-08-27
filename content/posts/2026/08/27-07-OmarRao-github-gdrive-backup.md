---
title: GitHub Backup and Restore
date: 2026-08-27 07:58:32 +00:00
tags:
  - OmarRao
  - GitHub Actions
draft: false
repo: https://github.com/OmarRao/github-gdrive-backup
marketplace: https://github.com/marketplace/actions/github-backup-and-restore
version: v5.0.6
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the backup of all repositories in a user's organization to their Google Drive. It runs daily at 02:00 UTC via GitHub Actions and provides a live dashboard hosted on GitHub Pages for managing backups, restoring from sessions, and generating reports. The action supports various aspects of repository data, including code, issues, pull requests, releases, wiki, labels, and milestones.
---


Version updated for **https://github.com/OmarRao/github-gdrive-backup** to version **v5.0.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-backup-and-restore) to find the latest changes.

## Action Summary

This GitHub Action automates the backup of all repositories in a user's organization to their Google Drive. It runs daily at 02:00 UTC via GitHub Actions and provides a live dashboard hosted on GitHub Pages for managing backups, restoring from sessions, and generating reports. The action supports various aspects of repository data, including code, issues, pull requests, releases, wiki, labels, and milestones.

## What's Changed

## GitHub Backup and Restore — v5.0.6

Marketplace-ready release of the reusable GitHub Action.

### Use in any workflow
```yaml
- uses: OmarRao/github-gdrive-backup@v5
  with:
    github-token:         ${{ secrets.GH_BACKUP_TOKEN }}
    gdrive-folder-id:     ${{ secrets.GDRIVE_FOLDER_ID }}
    google-client-secret: ${{ secrets.GOOGLE_CLIENT_SECRET }}
    google-token:         ${{ secrets.GOOGLE_TOKEN }}
    incremental-mode:     delta     # optional — upload only new git objects
    mirror-targets:       s3,b2     # optional — 3-2-1 fan-out
    signing-key:          ${{ secrets.BACKUP_SIGNING_KEY }}  # optional
```

### Highlights
- Back up GitHub repos (code, issues, PRs, releases, wiki, labels, milestones, config) to Google Drive or S3 / Azure / B2.
- Delta uploads (git-bundle chain), 3-2-1 fan-out, AES-256 encryption, Ed25519 signed manifests.
- Cross-provider restore (GitHub / GitLab / Gitea / local), recovery scorecard, tamper-evident audit log.
- Composite action, configurable node-version; emits a JSON summary output.

Dual-licensed AGPL-3.0 / commercial — see COMMERCIAL-LICENSE.md.

