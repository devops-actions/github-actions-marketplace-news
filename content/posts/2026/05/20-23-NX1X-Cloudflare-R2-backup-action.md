---
title: Cloudflare R2 Backup
date: 2026-05-20 23:15:15 +00:00
tags:
  - NX1X
  - GitHub Actions
draft: false
repo: https://github.com/NX1X/Cloudflare-R2-backup-action
marketplace: https://github.com/marketplace/actions/cloudflare-r2-backup
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/NX1X/Cloudflare-R2-backup-action** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloudflare-r2-backup) to find the latest changes.

## Action Summary

The **Cloudflare-R2-backup-action** automates the process of uploading, verifying, listing, and managing backup objects in Cloudflare R2 using GitHub Actions. It simplifies end-to-end server backup workflows by integrating tasks such as source preparation, file transport, R2 uploads, retention management, and integrity verification. Designed for flexibility, it also offers a reusable workflow template for streamlined database backups and custom backup pipelines, reducing the need for complex manual scripting.

## What's Changed

### Added

- Initial release - part of the [NXTools Collection](https://nx1xlab.dev/nxtools) by [NX1X](https://github.com/NX1X)
- Composite shell action with four operations:
  - `upload` - push a file to R2 with optional inline retention prune
  - `prune` - retention by age (`retention-days`) and/or count (`retention-count`)
  - `verify` - download + integrity check via `tar`, `zip`, or `sha256`
  - `list` - JSON listing with `count` and `total-size`
- AWS CLI under the hood (pre-installed on GitHub-hosted runners, no extra installs)
- R2 endpoint auto-derived from `account-id`; override available via `endpoint-url`
- Reusable workflow (`.github/workflows/backup.yml`) that orchestrates source prep, transport, upload, and optional verify
- Three source modes:
  - `local` - runs the backup script on the GitHub runner
  - `ssh` - runs the script on a remote server via plain SSH (with optional `ssh-known-hosts` for strict host key verification)
  - `tunnel-ssh` - wraps [`NX1X/cloudflare-tunnel-ssh-action`](https://github.com/NX1X/cloudflare-tunnel-ssh-action) for zero-trust access to servers behind Cloudflare Tunnel
- Built-in DB templates so users can skip writing dump commands:
  - `mysql` (also handles MariaDB via `db-dump-binary: mariadb-dump`)
  - `postgres` (single DB via `pg_dump`, all DBs via `pg_dumpall`)
  - `mongodb` (`mongodump --archive --gzip`)
  - `sqlite` (hot backup via `sqlite3 .backup`)
- Optional `docker compose exec -T <service>` wrapping for templates
- `extra-paths` input to include arbitrary files/directories alongside the dump
- Outputs for chaining: `object-key`, `size`, `pruned-count`, `verified`, `objects` (JSON), `count`, `total-size`
- Webhook notifications for the reusable workflow:
  - Inputs `notify-webhook-format` (`slack` | `discord` | `generic`), `notify-on-success` (default `false`), `notify-on-failure` (default `true`)
  - Secret `NOTIFY_WEBHOOK_URL` - when unset, notifications are silently disabled
  - `notify` job runs with `if: always() && !cancelled()` so failures are reported even when the backup or verify step errors
  - Notification delivery failures (webhook 5xx, connection refused) never fail the run - the backup state is the source of truth
  - `scripts/notify.sh` - payload builder and webhook poster, reused via sparse-checkout
- Unit tests (107 cases) with mocked `aws` and `curl` CLIs covering upload, prune, verify, list, dispatch, and notifications
- CI: pinned `actionlint` v1.7.7 + `shellcheck`, runs on every push and PR
- CodeQL Advanced workflow (`.github/workflows/codeql.yml`) - static analysis on workflow YAML using CodeQL's `actions` queries, runs on every push/PR and weekly via cron
- Renovate config (`.github/renovate.json`) for automated dependency updates - daily check window, 3-day cooldown on normal updates, 7-day cooldown on majors, instant PRs for security vulnerabilities, OSV alerts, custom regex manager tracking the pinned `actionlint` version
- Manual release workflow (`workflow_dispatch`) with version validation, duplicate tag check, CHANGELOG extraction, and floating major version tag
- Manual smoke-test workflow (`test.yml`) for verifying against real R2 infrastructure
- Issue templates, PR template, CODEOWNERS
- Documentation: source modes, DB templates, notifications, architecture/design notes, roadmap

### Security

- All `${{ inputs.* }}` and `${{ secrets.* }}` expressions in shell scripts routed through `env:` blocks to prevent script injection
- Input validation for `retention-days`, `retention-count`, `max-keys` - non-negative integers only
- DB template env-var prelude generated with `printf '%q'` so passwords/paths with shell metacharacters are safely escaped
- For `mysql` and `postgres`, password is set via env var (`MYSQL_PWD` / `PGPASSWORD`) - never as a CLI argument
- Explicit `permissions` blocks on all workflows (least-privilege `contents: read`; `contents: write` only on the release job that creates tags)
- `softprops/action-gh-release` pinned to commit SHA in the release workflow
- `actions/checkout@v5` (Node.js 24) across all workflows
- No telemetry, no analytics, no external calls - traffic only to R2 endpoint and (for tunnel-ssh) Cloudflare Access
- Apache License 2.0
