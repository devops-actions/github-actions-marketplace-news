---
title: docentic
date: 2026-05-26 06:26:39 +00:00
tags:
  - intrepideai
  - GitHub Actions
draft: false
repo: https://github.com/intrepideai/docentic
marketplace: https://github.com/marketplace/actions/docentic
version: v0.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/intrepideai/docentic** to version **v0.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docentic) to find the latest changes.

## Action Summary

The `docentic` GitHub Action automates the process of making code repositories "agent-friendly" by scaffolding a standardized documentation structure that helps both humans and AI agents (e.g., ChatGPT, Claude, Codex) navigate and understand the codebase. It eliminates the need for manual file searching and reduces errors caused by missing or misleading paths, ensuring AI tools can locate key documentation and project structure efficiently. Key capabilities include auto-generating a documentation framework, integrating with AI tools, and enabling seamless repository exploration.

## What's Changed

Polish release ahead of the GitHub Marketplace listing. No behavior change to the CLI itself — all action.yml + README improvements.

```bash
npx @intrepideai/docentic init
# or
npm install -g @intrepideai/docentic@0.2.1
```

## What's new

### Added — new GitHub Action output

\`check-summary\` exposes a one-line string like \`errors=2 warnings=1 spine_missing=0\`. Pipe it into PR comments, Slack, or any downstream step that needs to surface what's broken without scraping the Actions log.

```yaml
- id: docentic
  uses: intrepideai/docentic@v0.2.1
  continue-on-error: true

- if: steps.docentic.outputs.ok == 'false'
  uses: actions/github-script@v7
  with:
    script: |
      github.rest.issues.createComment({
        ...context.repo,
        issue_number: context.issue.number,
        body: \`🟣 docentic: \${{ steps.docentic.outputs.check-summary }}\`
      })
```

The action also emits a \`::notice::\` annotation with the same summary, so it shows up at the top of the Actions log automatically.

### Changed
- **Tightened the GitHub Action description** so it reads cleanly on the Marketplace tile.
- README badge strip now includes a Marketplace badge.

### How \`check-summary\` is computed
The action always runs \`docentic check --json\` first (cached npx, near-free), parses with jq, falls back to a tiny Node one-liner on runners without jq. The user-visible check (human-readable by default, JSON if requested) then runs against the same npx cache.

## Full changelog
https://github.com/intrepideai/docentic/blob/main/CHANGELOG.md#021--2026-05-25

**Diff:** https://github.com/intrepideai/docentic/compare/v0.2.0...v0.2.1
