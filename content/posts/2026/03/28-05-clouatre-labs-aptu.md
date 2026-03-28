---
title: Aptu Triage
date: 2026-03-28 05:59:19 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.18
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.18**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered triage utility designed to automate tasks such as issue triage, pull request (PR) reviews, release note generation, and security scanning for open-source projects. By leveraging task-specific AI models with optimized prompts, it provides precise and efficient insights, including suggested labels, clarifying questions, and feedback on code quality. The tool integrates seamlessly with GitHub Actions to streamline workflows, improve collaboration, and enhance software development productivity.

## Release notes

## What's Changed

### Features

- **MCP:** Improve prompts with args, output format, persona, chain-of-thought, and dynamic loading (#939)
- **AI:** Align system prompts across triage and review providers (#941 #942 #943 #944 #945)

### Bug Fixes

- **MCP:** Add empty `properties` to `HealthCheckParams` JSON schema (#964)
- **CI:** Add `crates-io-auth-action` for OIDC trusted publishing (#965)
- **CI:** Add `--profile ci` to clippy, build-examples, and test steps (#963)
- **CI:** Correct zizmor suppress syntax and rule names (#962)
- **Release:** Rename CLI tarballs from `aptu-*` to `aptu-cli-*` (#932)

### CI & Infrastructure

- Switch crates.io publish to OIDC trusted publishing (#954)
- Add zizmor SHA-pinning enforcement (#961)
- Pin runners: `ubuntu-latest` → `ubuntu-24.04`, `macos-latest` → `macos-15` (#955 #956)
- Add permissions block to iOS build workflow (#960)
- Group Renovate updates and add weekly schedule (#957)
- Remove `merge_group` trigger (#959)
- Promote `body/footer-leading-blank` to commitlint error (#949)

### Dependencies

- `octocrab` → v0.49.6 (#948)
- `toml` → v1.1.0 (#951)
- `taiki-e/install-action` digest updates (#933 #934 #946 #950 #952 #953)
- Lock file maintenance (#947)

**Full changelog:** https://github.com/clouatre-labs/aptu/compare/v0.2.17...v0.2.18
