---
title: Themis PR Gate
date: 2026-07-01 14:55:44 +00:00
tags:
  - Pheoxy
  - GitHub Actions
draft: false
repo: https://github.com/Pheoxy/themis
marketplace: https://github.com/marketplace/actions/themis-pr-gate
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Pheoxy/themis** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/themis-pr-gate) to find the latest changes.

## What's Changed

## Summary

Themis v1.0.2 is a patch release for GitHub Marketplace publication metadata.

## Changed

- GitHub Action Marketplace display name changed from `Themis` to `Themis PR Gate` so it satisfies GitHub Marketplace's global action-name uniqueness requirement.
- Stable GitHub Action examples now reference `Pheoxy/themis@v1.0.2`.
- Documentation now explains why the Marketplace display name differs from the project name.

## Verification

Completed before tagging:

```bash
nix flake check
nix run . -- release check
nix run . -- release audit --history --format markdown
nix run . -- self-check --repo . --base HEAD~1 --body-file examples/pr-body.md --evidence "nix flake check passed" --human --run-checks
git tag -v v1.0.2
```

Results:

- `nix flake check`: pass
- `release check`: pass
- `release audit --history`: pass
- `self-check`: pass
- signed tag verification: pass

## GitHub Action Smoke Test

- Workflow: `Themis Smoke`
- Run: https://github.com/Pheoxy/themis/actions/runs/28502185507
- Result: success
- Commit tested: `a338cab9ca7afc7c450db79ca82e391c86f30655`

## Tag Release Workflow

- Workflow: `Release`
- Run: https://github.com/Pheoxy/themis/actions/runs/28502309852
- Result: success
- Tag: `v1.0.2`

## Upgrade Notes

Use `Pheoxy/themis@v1.0.2` in GitHub workflows for stable action pinning.

## Marketplace Notes

Publish this release to the GitHub Marketplace using the display name `Themis PR Gate`.

## Non-Guarantees

Themis is a pre-upstream readiness gate. Passing Themis or this release's checks does not certify code correctness, security, licensing, legal compliance, or upstream acceptance.

## Links

- Changelog: https://github.com/Pheoxy/themis/blob/v1.0.2/CHANGELOG.md
- Documentation: https://github.com/Pheoxy/themis#readme
- Release tag: https://github.com/Pheoxy/themis/releases/tag/v1.0.2

