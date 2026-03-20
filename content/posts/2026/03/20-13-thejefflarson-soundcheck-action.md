---
title: Soundcheck Security Review
date: 2026-03-20 13:36:17 +00:00
tags:
  - thejefflarson
  - GitHub Actions
draft: false
repo: https://github.com/thejefflarson/soundcheck-action
marketplace: https://github.com/marketplace/actions/soundcheck-security-review
version: v1.0.9
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/thejefflarson/soundcheck-action** to version **v1.0.9**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soundcheck-security-review) to find the latest changes.

## Action Summary

The "Soundcheck Security Review" GitHub Action automates security code reviews by scanning repository source files for vulnerabilities based on OWASP Top 10 standards. It identifies and rewrites Critical, High, and Medium severity issues, commits the changes to a dedicated branch, and opens a pull request containing a severity-ranked findings table. This action simplifies security auditing, ensuring consistent and actionable remediation directly within the development workflow.

## Release notes

## What's new

### Features
- Downloads skills from [thejefflarson/soundcheck](https://github.com/thejefflarson/soundcheck) on every run — skills are always up to date
- All sibling skills loaded into the system prompt so the meta-skill can fully invoke each one
- PR-triggered runs post findings as a comment on the triggering PR and commit fixes directly to the PR branch
- Cron/on-demand runs use a dedicated `soundcheck/security-review` branch and open or update a security PR
- Findings include line numbers in both the PR comment table and the JSON artifact
- Uploads a `soundcheck-findings.json` artifact when issues are found

### Security fixes (self-review via Soundcheck)
- **broken-access-control**: `apply_rewrites` now restricted to files actually sent for review — LLM cannot name arbitrary repo files
- **insecure-output-handling**: file rewrites use atomic writes (`tempfile` + `os.replace`) to prevent partial/corrupt writes
- **security-misconfiguration**: output paths checked for symlinks before writing to prevent symlink attacks in `/tmp`
- **prompt-injection**: `<soundcheck-*>` tags in scanned file content are neutralized before prompt injection
- **exceptional-conditions**: `response.content` bounds and type checked before access
- **logging-failures**: file paths CRLF-sanitized before printing to stderr

### Fixes
- YAML lint errors in `action.yml` (quoted `${{}}` expressions, `$'...'` for multiline commit messages)
- `hashFiles()` condition replaced with a step output for the artifact upload gate
- `<example>` tags wrap format templates in the prompt; parsers strip them to avoid echoing placeholder content as real findings

