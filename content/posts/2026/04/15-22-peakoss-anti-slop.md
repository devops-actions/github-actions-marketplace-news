---
title: anti-slop
date: 2026-04-15 22:02:53 +00:00
tags:
  - peakoss
  - GitHub Actions
draft: false
repo: https://github.com/peakoss/anti-slop
marketplace: https://github.com/marketplace/actions/anti-slop
version: v0.3.0
dependentsNumber: "103"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/peakoss/anti-slop** to version **v0.3.0**.

- This action is used across all versions by **103** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/anti-slop) to find the latest changes.

## Action Summary

**Anti Slop** is a GitHub Action designed to automatically detect and close low-quality or AI-generated pull requests (PRs) before they reach the review queue. It leverages 34 configurable rules to evaluate PR attributes such as branch names, descriptions, commit messages, file changes, and contributor history, helping maintainers save time and focus on meaningful contributions. The action is language-agnostic, highly configurable with sensible defaults, and ensures open-source inclusivity while effectively mitigating spam and low-effort submissions.

## What's Changed

## Added

- `maxChangedFiles` and `maxChangedLines` options for new PR size checks that limit the number of changed files and changed lines (additions + deletions)
- `requirePublicProfile` option that requires the PR author to have a public GitHub profile
- `autofix-ci[bot]` to default bot exemptions

## Changed

- Reduced compiled action size
  <table>
    <tr>
      <td><b>v0.2</b></td>
      <td><b>v0.3</b></td>
      <td><b>Reduction</b></td>
    </tr>
    <tr>
      <td>51,478 lines (2.3 MB)</td>
      <td>20,815 lines (0.9 MB)</td>
      <td>60%</td>
    </tr>
  </table>
- `maxDailyForks` default from `7` to `6`
- Reduce spam username consecutive digit threshold from 4 to 2
- Remove `public profile` from profile completeness signals (now a separate `requirePublicProfile` check)
- Read `owner` and `repo` from the webhook payload instead of the `GITHUB_REPOSITORY` env var, aligning with how all other context data is read, preparing for a future ecosystem CI and simplifying local testing (no need to edit the `.env` file all the time)

## Fixed

- Skip merge checks when the user profile is private, since merge data cannot be computed for private profiles
- Set `result` output to `passed` when check failures do not reach `maxFailures` (previously the output was unset)

## Refactored

- Convert `Input` enum to a `const` object
- Switch to `Number.isNaN` to avoid type coercion

## Maintenance

- Cleanup input descriptions, add missing valid ranges and v0.3 changes to README
- Add v0.2 and v0.3 changes to `.env.example`
- Align test event fixtures with `context.ts`
- Switch indentation from spaces to tabs
- Reorganize and harden `tsconfig.json`
- Add `bunfig.toml` with hardened bun install settings
- Upgrade all dependencies
- Update tsdown dependency bundling config syntax
- Add tsx to `devDependencies` to make local testing work with bun `linker = "isolated"`
- Add `@types/node` to `devDependencies`
- Move `@octokit/webhooks-types` to `devDependencies`
- Add import sorting to prettier
- Add `check` and `test:all` scripts to `package.json`
- Add caching to eslint and prettier
- Improve eslint rule comment
- Simplify and consolidate `.gitignore`
- Add branch and commit ahead prerequisite checks to the release script
- Improve `.prettierignore`

## Issues

- Fixes <https://github.com/peakoss/anti-slop/issues/7>
