---
title: Bashful Comment
date: 2026-03-13 13:34:24 +00:00
tags:
  - 3MUl0R
  - GitHub Actions
draft: false
repo: https://github.com/3MUl0R/bashful-comment
marketplace: https://github.com/marketplace/actions/bashful-comment
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/3MUl0R/bashful-comment** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bashful-comment) to find the latest changes.

## Action Summary

The **Bashful Comment** GitHub Action automates the creation, updating, and management of pull request comments using lightweight, pre-installed tools like `bash`, `jq`, `perl`, and `gh`. It eliminates the need for Node.js dependencies, ensuring seamless operation without build steps or versioning concerns. Key features include adding conditional messages based on workflow status, updating existing comments without duplication, and reading comment content from files or performing find-and-replace operations, making it a flexible and efficient solution for managing PR comments in CI/CD workflows.

## Release notes

## v1.0.0

**Bashful Comment** is a zero-dependency GitHub Action for adding, updating, and managing pull request comments. It runs as a composite action using only `bash`, `jq`, `perl`, and `gh`. All of which pre-installed on GitHub-hosted runners. 

There are no `node_modules`, no build step, and nothing to break when GitHub deprecates a Node.js runtime.

### Why this exists

GitHub Actions that post PR comments are commonly implemented in Node.js. 
As GitHub advances its supported Node.js versions (16 -> 20 -> 24), every action that targets an older runtime generates deprecation warnings and eventually stops working. This action sidesteps that cycle entirely by having no runtime dependency beyond the shell tools already present on every runner.

### Features

- **Zero Node.js dependency** - composite action, pure shell; no `node_modules`, no npm audit noise, no runtime version pinning
- **Deduplication via `message-id`** - a hidden HTML marker ties comments to a workflow step; subsequent runs update the existing comment instead of creating new ones
- **Status-aware messages** - provide distinct `message-success`, `message-failure`, `message-cancelled`, and `message-skipped` bodies; the correct one is selected automatically from `job.status`
- **Find and replace** - apply one or more regex patterns against an existing comment body using Perl-compatible regex with inline modifier support (`/pattern/gi`, `/m`, `/s`)
- **`message-path` with glob support** - read comment content from one or more files; supports glob patterns and concatenates multiple matches
- **Preformatted code blocks** - wrap any message in a fenced code block via `preformatted: true`
- **Refresh position** - delete and recreate a comment so it surfaces at the bottom of the thread
- **`update-only` mode** - silently skip posting if no existing comment is found
- **GitHub Enterprise Server (GHES)** - set `github-host` and `github-enterprise-token` to target a GHES instance
- **Outputs** - `comment-created`, `comment-updated`, and `comment-id` for use in downstream steps
- **Self-testing CI** - the repository's own CI workflow dogfoods all nine features on every pull request

### Marker compatibility with mshick/add-pr-comment

This action uses the same `<!-- add-pr-comment:... -->` hidden markers that `mshick/add-pr-comment` embeds in comments. If your repository already has sticky comments posted by that action, Bashful Comment will find them by their existing markers and update them in place - no comment duplication, no migration of historical comments required.

### Migration from mshick/add-pr-comment

Change the `uses` line. Everything else stays the same.

**Before:**
```yaml
- uses: mshick/add-pr-comment@v2
  with:
    message-id: deploy-status
    message: "Deployed: ${{ env.VERSION }}"
```

**After:**
```yaml
- uses: 3MUl0R/bashful-comment@v1
  with:
    message-id: deploy-status
    message: "Deployed: ${{ env.VERSION }}"
```

All inputs are supported with identical names and semantics. The one capability not carried over is `proxy-url` - see the [README](https://github.com/3MUl0R/bashful-comment#differences-from-mshickadd-pr-comment) for details.

### Runtime requirements

All required tools are pre-installed on GitHub-hosted runners
