---
title: VICE Security Audit
date: 2026-05-03 06:38:55 +00:00
tags:
  - Webba-Creative-Technologies
  - GitHub Actions
draft: false
repo: https://github.com/Webba-Creative-Technologies/vice
marketplace: https://github.com/marketplace/actions/vice-security-audit
version: v3.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Webba-Creative-Technologies/vice** to version **v3.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vice-security-audit) to find the latest changes.

## Action Summary

This GitHub Action integrates the VICE security auditing tool into your CI/CD pipeline to automate vulnerability detection in web applications. It performs black-box (remote) and white-box (local) scans, identifying issues like SQL injection, XSS, insecure configurations, and exposed secrets. The action provides key capabilities such as posting actionable security findings as pull request comments, maintaining a live security badge in your repository, uploading results to GitHub Code Scanning, and enforcing score-based gating to prevent security regressions.

## What's Changed

## Summary

  Major update with 6 new audit modules, a baseline + confidence system to ease adoption, a plugin system via
  `vice.config.js`, full async I/O migration, and ~30 false positive fixes from real-world scan feedback.

  No breaking changes - existing CLI commands and JSON/SARIF outputs are backward compatible.

  ## New audit modules

  **Local (white-box) :**
  - `git-history` : scans the last 500 commits for previously committed secrets (configurable via
  `VICE_GIT_HISTORY_DEPTH`)
  - `container` : Dockerfile + docker-compose audit (USER root, secrets in ENV, ports on 0.0.0.0, privileged)
  - `ci-security` : GitHub Actions, GitLab CI, and CircleCI workflow audit (unpinned actions, pull_request_target with
  PR-head checkout, write-all permissions, secret echoing)

  **Remote (black-box) :**
  - TLS deeper analysis : cert expiration with Let's Encrypt auto-renew window awareness, weak cipher suites, TLSv1.0/1.1   downgrade probing
  - GraphQL endpoint tests : introspection, query depth limit, field suggestions
  - WordPress specifics : user enumeration via `?author=N`, `/wp-json/wp/v2/users`, xmlrpc.php, wp-login.php, wp-cron.php
  ## Detection extensions

  - localStorage / sessionStorage token detection during crawl
  - Subresource Integrity (SRI) check on external scripts
  - Mixed content detection on HTTPS pages
  - OpenAPI / Swagger spec enumeration : when a public spec is found, probe each documented GET endpoint without auth
  - DNS additions : DNSSEC (DS records), CAA, MTA-STS, TLS-RPT
  - Subdomain scan via Certificate Transparency (crt.sh)

  ## Adoption & DX

  - `.vice-baseline.json` to suppress pre-existing findings on adoption (only NEW issues block CI)
  - Confidence levels (high/medium/low) on findings, filterable via `--min-confidence`
  - Per-rule penalty cap to prevent one noisy rule from tanking the grade
  - `vice diff <old.json> <new.json>` with markdown / JSON output for PR comments
  - `vice baseline [path]` to snapshot current findings
  - `vice.config.js` with `disabledModules`, `transformFinding`, custom `modules: ['./plugin.js']`
  - `--severity-min`, `--min-confidence`, `--no-baseline` CLI flags
  - `--auth-cookie` / `--auth-header` for crawling SaaS behind a login

  ## Output enrichment

  - CWE-XX and OWASP A0X:2021 tags on every finding (JSON, SARIF, HTML)
  - `security-severity` numeric score in SARIF for GitHub Code Scanning UI
  - HTML report with CWE/OWASP badges per finding

  ## Performance

  - Full async I/O migration in local audit modules (real parallelization on big projects)
  - npm audit + git log run async (no longer block other modules)
  - Side fix : `npm audit` now works correctly on Windows (was silently broken by a bash redirect)

  ## False positive reductions (from real-world scans)

  - Comment-aware detection : skip patterns inside `//`, `/* */`, `<!-- -->`, `#` comments and JSDoc
  - Stricter SQL error patterns : no more flagging "Powered by PostgreSQL" in footers
  - IP detection : removed 80+ noisy "uncertain context" findings, tighter heuristics on numeric ID sequences
  - Public-by-convention bucket allowlist (avatars, logos, public-uploads, etc.)
  - Hosting providers (Nginx, Apache, OVHcloud, Cloudflare, AWS, etc.) downgraded from MEDIUM to INFO
  - Analytics CDNs (Microsoft Clarity, GTM, Hotjar, GA, Segment, etc.) excluded from strict SRI requirement
  - WebSocket protocol handshake distinguished from real data leaks
  - TLS expiration aware of Let's Encrypt 30-day auto-renew window
  - HTTP redirect duplicate finding removed
  - Subdomain HTTPS check skips non-HTTP protocol names (ftp, smtp, imap, mail, etc.)
  - robots.txt and sitemap.xml no longer flagged as "sensitive files"

  ## Upgrade

  ```bash
  npm install -g vice-security@latest
  ```
