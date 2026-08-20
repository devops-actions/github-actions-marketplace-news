---
title: Kiro CLI Action
date: 2026-08-20 06:33:36 +00:00
tags:
  - ndmxjp
  - GitHub Actions
draft: false
repo: https://github.com/ndmxjp/Kiro-action
marketplace: https://github.com/marketplace/actions/kiro-cli-action
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Kiro Action automates interaction with the Kiro CLI on GitHub issues and pull requests by detecting comments containing the `@kiro` trigger phrase. It reads threads, creates branches or checks out PRs, builds prompts based on the entire thread, and either answers questions or implements features through the Kiro CLI. The action supports tag mode for human-triggered interactions and agent mode for scheduled tasks or labeled actions.
---


Version updated for **https://github.com/ndmxjp/Kiro-action** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kiro-cli-action) to find the latest changes.

## Action Summary

The Kiro Action automates interaction with the Kiro CLI on GitHub issues and pull requests by detecting comments containing the `@kiro` trigger phrase. It reads threads, creates branches or checks out PRs, builds prompts based on the entire thread, and either answers questions or implements features through the Kiro CLI. The action supports tag mode for human-triggered interactions and agent mode for scheduled tasks or labeled actions.

## What's Changed

Run the [Kiro CLI](https://kiro.dev) on GitHub issues and pull requests. Mention `@kiro` in a comment and it reads the thread, works in a branch, and reports back by editing a single tracking comment.

> [!IMPORTANT]
> **Unofficial community project.** Not affiliated with, sponsored by, or endorsed by Amazon Web Services. "Kiro" and "Amazon Web Services" are trademarks of Amazon.com, Inc. or its affiliates. This is a port of [anthropics/claude-code-action](https://github.com/anthropics/claude-code-action) (MIT) to the Kiro CLI. The Kiro project publishes its own action at [kirodotdev-labs/kiro-action](https://github.com/kirodotdev-labs/kiro-action); if you want the one closest to the Kiro project, use that.

## Quick start

```yaml
- uses: actions/checkout@v7
  with:
    fetch-depth: 0

- uses: ndmxjp/Kiro-action@v0
  with:
    kiro_api_key: ${{ secrets.KIRO_API_KEY }}
```

See the [README](https://github.com/ndmxjp/Kiro-action#readme) for the full workflow, including the `if:` gate you want on a public repository.

## What this port carries over

The limits were measured against kiro-cli 2.18.1 rather than assumed — `.github/workflows/kiro-perm-probe.yml` runs the CLI across a matrix of configurations, and [docs/security.md](https://github.com/ndmxjp/Kiro-action/blob/v0.2.0/docs/security.md) records what each one permits.

- Only actors with write access can trigger a run; bots need to be listed explicitly.
- Comment and issue content is pinned to trigger time, then stripped of hidden-instruction channels.
- On a pull request, config the CLI executes (`.kiro/`, `.mcp.json`, `AGENTS.md`, `.gitmodules`, `.husky/`, …) is restored from the base branch, so a PR cannot introduce hooks or MCP servers that run in the job.
- The agent's shell is limited to named commands (read-only git by default) and its writes are confined to the checkout. `git push`, `git config`, `curl` and friends are refused, and the action does the committing and pushing itself.

## Since v0.1.0

- New `working_indicator` input: the "Kiro is working…" line can carry an animated image of your own instead of the emoji.
- Fixed: the tracking comment was sanitised but never redacted, so a Kiro key (`ksk_`) or the literal value of a secret in the run's environment could reach a comment that, on a public repository, anyone can read.
- Fixed: the write policy confined `fs_write` to `./**` while the prompt asks the agent to leave its commit message under `$RUNNER_TEMP`, so runs fell back to a generated commit subject.
- The workflow gate in the README and examples now names the trigger label, drops `assigned`, and filters bot authors before a runner starts.
- Pinned action versions moved to current majors.

## Requirements

- A Kiro API key (`KIRO_API_KEY`).
- A runner with network access: the action installs Bun and the Kiro CLI, resolves its own dependencies, and the CLI then talks to the Kiro service.
- `actions/checkout` with `fetch-depth: 0` is recommended so diffs against the base branch work.

## Known gaps

No commit signing, no inline PR review comments, and the agent cannot run your test suite unless you grant it with `allowed_shell_commands`. All of them, and the reasoning, are in [docs/security.md](https://github.com/ndmxjp/Kiro-action/blob/v0.2.0/docs/security.md#known-gaps).

MIT licensed. Derived from [anthropics/claude-code-action](https://github.com/anthropics/claude-code-action), also MIT.

