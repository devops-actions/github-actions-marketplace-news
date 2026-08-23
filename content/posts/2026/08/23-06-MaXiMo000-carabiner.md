---
title: Carabiner Repo Security
date: 2026-08-23 06:07:41 +00:00
tags:
  - MaXiMo000
  - GitHub Actions
draft: false
repo: https://github.com/MaXiMo000/carabiner
marketplace: https://github.com/marketplace/actions/carabiner-repo-security
version: v0.1.14
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:**
  
  Carabiner automates the secure setup of repositories by default and continuously monitors for security vulnerabilities using various scanning tools. It solves common issues such as insecure CI/CD configurations, untrusted code execution, and missing security controls. Key capabilities include a ratchet mechanism to track accepted findings, a drill to verify control effectiveness, and a normalized model for reporting vulnerabilities. The action can be adopted by detecting, configuring, and ratcheting the repository once per repo, scanning for new issues, examining all engines and history, proving controls fire, listing informational findings, tracking accepted findings, and accepting them with an expiration date.
---


Version updated for **https://github.com/MaXiMo000/carabiner** to version **v0.1.14**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carabiner-repo-security) to find the latest changes.

## Action Summary

**Summary:**

Carabiner automates the secure setup of repositories by default and continuously monitors for security vulnerabilities using various scanning tools. It solves common issues such as insecure CI/CD configurations, untrusted code execution, and missing security controls. Key capabilities include a ratchet mechanism to track accepted findings, a drill to verify control effectiveness, and a normalized model for reporting vulnerabilities. The action can be adopted by detecting, configuring, and ratcheting the repository once per repo, scanning for new issues, examining all engines and history, proving controls fire, listing informational findings, tracking accepted findings, and accepting them with an expiration date.

## What's Changed

Make any repo secure by default, keep it that way, and prove the controls fire.

```yaml
- uses: MaXiMo000/carabiner@v0.1.14
```

```bash
pip install carabiner-sec        # installs the `carabiner` command
docker run --rm -v "$PWD:/repo:ro" ghcr.io/maximo000/carabiner:0.1.14 scan --all
```

The Marketplace display name is now **Carabiner Repo Security** — GitHub requires an action name to be unique across every action, user and organisation. The repository, the `carabiner` command and the `carabiner-sec` package are unchanged.

### Calibrated against 60 public repositories

Tuned by scanning 60 real projects — tokio, grafana, vault, rails, next.js, home-assistant, airflow — across 13 languages, then re-checking every finding with an oracle written independently of the engines.

Default output is a **median of 9 findings per repository**; roughly 800 informational ones across the corpus are counted but not listed until `--info`. Hidden never means disappeared — the count always shows.

A version tag on an action is informational. A **moving branch in someone else's repository** is not. Classifying refs by shape rather than by a branch-name list also caught `stable`, `nightly` and `cargo-hack`. One unpinned reference is one finding, however many steps use it: tokio reaches `dtolnay/rust-toolchain@stable` 34 times in one workflow — one decision, not 34 lines.

tokio: 172 findings → 10. Corpus criticals: 31 → 2, and both survivors are real — a committed private key in grafana, and an unguarded `pull_request_target` + PR-head checkout in rollup.

### A native Dockerfile engine

Trivy scans a *built* image — daemon, build, minutes. A Dockerfile is text, and the worst mistakes are visible before anything is built.

| | |
|---|---|
| `DOCK001` | the final stage never drops root |
| `DOCK002` | untagged or `:latest` base image |
| `DOCK003` | a credential baked into `ARG`/`ENV`, readable with `docker history` |
| `DOCK004` | a remote script piped straight into a shell at build time |
| `DOCK005` | TLS verification disabled during the build |

54 real issues across 19 of the 60 repositories — after spot-checking killed 33 of the rule's first 36 findings. `FROM builder` is a stage reference, `scratch` is a keyword, `${BASE_IMAGE}` is unknowable, and airflow embeds whole Python programs in BuildKit heredocs that were being parsed as instructions.

### Findings that named an action or image were unreadable

The redactor treated `/`, `.` and `-` as token characters, so `dtolnay/rust-toolchain@stable` printed as `dtol...hain@stable`. A credential is a long *unbroken* run with no separators to split on — splitting on them keeps identifiers legible while still masking `ghp_…` and `AKIA…`.

### What it does

**A ratchet.** `carabiner init` accepts existing findings into a baseline, so CI goes green today and only *new* problems fail it. `--expires 90` puts a deadline on accepted debt.

**A drill.** `carabiner drill` doesn't read config — it plants a private key and checks your hooks actually block it, then asks GitHub whether push protection is really on. A check that *could not run* never reports as passing.

**One normalized model** → SARIF into the PR's Security tab, deduplicated across engines, most-severe-wins.

**52 tests, 193 checks**, on Linux and Windows across Python 3.10 and 3.13, plus a Docker build, a wheel install into a clean venv, and carabiner scanning itself — every commit.
