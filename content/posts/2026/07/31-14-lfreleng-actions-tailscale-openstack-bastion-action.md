---
title: OpenStack Bastion with Tailscale
date: 2026-07-31 14:53:43 +00:00
tags:
  - lfreleng-actions
  - GitHub Actions
draft: false
repo: https://github.com/lfreleng-actions/tailscale-openstack-bastion-action
marketplace: https://github.com/marketplace/actions/openstack-bastion-with-tailscale
version: v0.1.2
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  The GitHub Action automates the setup and teardown of ephemeral OpenStack bastion hosts with Tailscale VPN, providing secure SSH access from GitHub Actions runners. It uses Packer to build custom images and Cloud-init to configure networking and security. The action supports both OAuth and legacy authentication keys for connecting to the OpenStack cloud, ensuring a fail-safe cleanup process and detailed logging for debugging.
---


Version updated for **https://github.com/lfreleng-actions/tailscale-openstack-bastion-action** to version **v0.1.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openstack-bastion-with-tailscale) to find the latest changes.

## Action Summary

The GitHub Action automates the setup and teardown of ephemeral OpenStack bastion hosts with Tailscale VPN, providing secure SSH access from GitHub Actions runners. It uses Packer to build custom images and Cloud-init to configure networking and security. The action supports both OAuth and legacy authentication keys for connecting to the OpenStack cloud, ensuring a fail-safe cleanup process and detailed logging for debugging.

## What's Changed

## Changes

## 🐛 Bug Fixes

- Fix: Harden and repair integration test workflows @ModeSevenIndustrialSolutions (#63)
- Chore: Disable pre-commit.ci autofix PRs @ModeSevenIndustrialSolutions (#60)
- Fix: Env-mediate expressions in run blocks @ModeSevenIndustrialSolutions (#61)

## 🔧 Maintenance

- Fix: Harden and repair integration test workflows @ModeSevenIndustrialSolutions (#63)
- Chore: Disable pre-commit.ci autofix PRs @ModeSevenIndustrialSolutions (#60)
- Chore: pre-commit autoupdate @[pre-commit-ci[bot]](https://github.com/apps/pre-commit-ci) (#59)
- CI(actions): Bump lfit/releng-reusable-workflows/.github/workflows/reuse-openssf-scorecard.yaml from 0.7.4 to 0.8.1 @[dependabot[bot]](https://github.com/apps/dependabot) (#58)
- CI(actions): Bump lfreleng-actions/tag-validate-action from 1.0.4 to 1.1.0 @[dependabot[bot]](https://github.com/apps/dependabot) (#57)
- CI(actions): Bump actions/checkout from 7.0.0 to 7.0.1 @[dependabot[bot]](https://github.com/apps/dependabot) (#56)
- Chore: pre-commit autoupdate @[pre-commit-ci[bot]](https://github.com/apps/pre-commit-ci) (#55)
- CI(actions): Bump lfit/releng-reusable-workflows/.github/workflows/reuse-openssf-scorecard.yaml from 0.7.2 to 0.7.4 @[dependabot[bot]](https://github.com/apps/dependabot) (#54)
- CI(actions): Bump step-security/harden-runner from 2.19.4 to 2.20.0 @[dependabot[bot]](https://github.com/apps/dependabot) (#53)
- Chore: pre-commit autoupdate @[pre-commit-ci[bot]](https://github.com/apps/pre-commit-ci) (#52)
- CI(actions): Bump tailscale/github-action from 4.1.2 to 4.1.3 @[dependabot[bot]](https://github.com/apps/dependabot) (#51)
- Chore: pre-commit autoupdate @[pre-commit-ci[bot]](https://github.com/apps/pre-commit-ci) (#50)
- CI(actions): Bump release-drafter/release-drafter from 7.4.0 to 7.5.1 @[dependabot[bot]](https://github.com/apps/dependabot) (#49)
- CI(actions): Bump actions/setup-python from 6.2.0 to 6.3.0 @[dependabot[bot]](https://github.com/apps/dependabot) (#48)

## 📚 Documentation

- Fix: Harden and repair integration test workflows @ModeSevenIndustrialSolutions (#63)

## ✅ Testing

- Fix: Harden and repair integration test workflows @ModeSevenIndustrialSolutions (#63)
- Chore: pre-commit autoupdate @[pre-commit-ci[bot]](https://github.com/apps/pre-commit-ci) (#59)
- CI(actions): Bump actions/checkout from 7.0.0 to 7.0.1 @[dependabot[bot]](https://github.com/apps/dependabot) (#56)
- CI(actions): Bump step-security/harden-runner from 2.19.4 to 2.20.0 @[dependabot[bot]](https://github.com/apps/dependabot) (#53)
- CI(actions): Bump tailscale/github-action from 4.1.2 to 4.1.3 @[dependabot[bot]](https://github.com/apps/dependabot) (#51)
- CI(actions): Bump actions/setup-python from 6.2.0 to 6.3.0 @[dependabot[bot]](https://github.com/apps/dependabot) (#48)

## Contributors

@ModeSevenIndustrialSolutions, @askb, @dependabot[bot], @pre-commit-ci[bot], @tykeal, [dependabot[bot]](https://github.com/apps/dependabot) and [pre-commit-ci[bot]](https://github.com/apps/pre-commit-ci)

