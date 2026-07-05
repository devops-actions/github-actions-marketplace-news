---
title: pipewell-confluence-publisher
date: 2026-07-05 22:02:02 +00:00
tags:
  - pipewell
  - GitHub Actions
draft: false
repo: https://github.com/pipewell/confluence-publisher
marketplace: https://github.com/marketplace/actions/pipewell-confluence-publisher
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipewell/confluence-publisher** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipewell-confluence-publisher) to find the latest changes.

## What's Changed

## What changed

**Manifest write-back now handled by the action itself.**

Previously, the consuming repo's workflow was responsible for committing updated page IDs back to `confluence-manifest.yaml` after new pages were created. This required a direct push to `main`, which broke when branch protection was enabled.

The action now handles write-back automatically:

1. After a sync run, if new page IDs were assigned, the action commits the manifest via the GitHub Contents API.
2. If branch protection blocks the direct commit, the action opens a PR automatically. Merge it promptly -- until merged, the next publish run will not have the new page IDs.

To avoid the PR fallback, grant `github-actions[bot]` bypass permission on the branch protection rule for `main` in your repository settings.

## Required workflow permissions

Add these to your publish workflow:

```yaml
permissions:
  contents: write
  pull-requests: write
```

## New input

| Input | Default | Description |
|---|---|---|
| `github-token` | `GITHUB_TOKEN` | Override the token used for manifest write-back; useful when a PAT with elevated permissions is needed |

See [ONBOARDING.md](https://github.com/pipewell/confluence-publisher/blob/main/docs/ONBOARDING.md) for full details.
