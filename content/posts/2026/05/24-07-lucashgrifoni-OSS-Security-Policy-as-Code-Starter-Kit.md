---
title: OSS Security Policy as Code
date: 2026-05-24 07:08:30 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v6.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v6.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## Action Summary

The "OSS Security Policy as Code Starter Kit" GitHub Action evaluates open-source repositories against predefined security policy profiles, generating detailed reports in Markdown, JSON, and optional SARIF formats. It automates the validation of repository governance, CI/CD posture, release hardening, and framework-specific compliance signals by integrating evidence from local files, workflows, and third-party scanner outputs. This tool is designed to serve as a local-first security gate, providing assurance grading and policy mapping, while allowing for exception handling with waivers.

## What's Changed

## OSS Security Policy as Code Starter Kit v6.4.0

This release brings **GitLab to full first-class parity** with the GitHub, Azure, and AWS families: a new `gitlab-release-hardening-1/2/3` track, a `collect-evidence --platform gitlab` evidence collector (protected-branch, MR-approval, and group-MFA evidence), and first-class `recommend-profile` / `init --platform gitlab` / `scaffold-evidence` support. The kit now bundles **56 profiles**.

---

## Highlights

- bring GitLab to full first-class parity (release-hardening track + evidence collector)

---

## Improvements

- stop clipping hero headline descenders and terminal report

---

## Notes

- release 6.4.0
- fix-docs
- resolve CodeQL + KICS code-scanning alerts
- allow CodeQL bundle download under harden-runner egress block
- track preview.html and drop its gitignore entry
- align docs/ with v6.3.0 reality
- gitignore preview.html and stop tracking it
- add standalone preview.html
- rebuild bundle.js/site.css from updated jsx sources
- update landing page layout, hero, and section content

---

**License:** Apache-2.0.

