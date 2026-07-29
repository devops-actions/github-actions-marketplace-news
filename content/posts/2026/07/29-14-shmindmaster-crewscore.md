---
title: CrewScore
date: 2026-07-29 14:58:46 +00:00
tags:
  - shmindmaster
  - GitHub Actions
draft: false
repo: https://github.com/shmindmaster/crewscore
marketplace: https://github.com/marketplace/actions/crewscore
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **The CrewScore GitHub Action helps identify safety controls missing from AI agent prompts. It evaluates whether a prompt states 23 published safety rules, not whether the agent adheres to them. The action checks files named `prompt.md` and `.prompt.yml`, providing insights into which guards are required but not present. It also offers tools for generating regression baselines and automating testing processes.**
---


Version updated for **https://github.com/shmindmaster/crewscore** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/crewscore) to find the latest changes.

## Action Summary

**The CrewScore GitHub Action helps identify safety controls missing from AI agent prompts. It evaluates whether a prompt states 23 published safety rules, not whether the agent adheres to them. The action checks files named `prompt.md` and `.prompt.yml`, providing insights into which guards are required but not present. It also offers tools for generating regression baselines and automating testing processes.**

## What's Changed


No scoring change. `crewscore-hygiene@0.5.0`, the 23-control denominator,
numeric JSON fields, and Action outputs are unchanged.

### Fixed

- **Published guidance and release claims now match the product.** Copy scopes
  the 14/100 median to the 83-prompt production subset, describes browser
  analytics truthfully without ever sending prompt text, and marks cached
  corpus regeneration as cache-conditional. CI examples now model explicit
  control policies instead of an arbitrary numeric bar; stale links and
  release-tag references are repaired in the 0.6.0 publication below.

- **Coverage language now stays coverage language.** The `fix` no-change path
  no longer calls an agent production-ready or treats a structural result as
  strong. The public comparison and live-eval guidance now describe published
  written-control findings and selected-control policies, rather than claiming
  to predict production harm or recommending an arbitrary score threshold.

- **Browser control suggestions now satisfy exactly the control they name.**
  The controls-first reviewer rescans the in-browser text after applying a
  selected suggestion. Ten terse suggestions previously matched no published
  control; some others matched an additional control. Every exported
  per-control template is now asserted to match its own control and no other,
  and cross-browser coverage verifies that applying one control updates the
  result by one control.

- **Browser CI is hermetic and stable on the DigitalOcean runner.** Playwright
  owns a CrewScore-specific local server port instead of accepting an unrelated
  service on the common development port, and the shared runner serializes its
  browser projects to avoid resource contention while retaining full coverage.

- **Clipboard fallback no longer waits forever on a blocked browser API.** A
  bounded write attempt now falls through to the in-page copy path with user
  feedback when a browser leaves the asynchronous clipboard permission request
  pending.

### Added

- **Explicit control policies instead of score chasing.** `test` and `scan`
  can now require public control IDs/dimensions, protect a prompt-free
  baseline with `--fail-on-regression`, or read the deliberately small
  `.crewscore.yml` schema. These options report and gate only controls; they
  do not modify the score, tier, ruleset, or the coding-agent-config exemption.

- **`crewscore baseline` and `crewscore init`.** Baselines store only paths,
  profiles, found control IDs, and the ruleset - never prompt text. `init`
  creates a reviewable baseline, config, and non-deploying pull-request
  workflow without overwriting existing files.

- **Prompt-free SARIF.** `--sarif` writes missing-control IDs and artifact
  paths without matched snippets. The Action exposes the same optional inputs
  and is now report-only by default; its established score/tier/scored outputs
  are unchanged.

- **Community and discoverability foundations.** Security reporting, a full
  code of conduct, PR and structured scoring/adapter issue templates, scoring
  governance, roadmap, runnable quickstart, static docs/rules pages, sitemap,
  robots, and SoftwareApplication/FAQ structured data.

### Validation

- Added focused policy/SARIF/init, Action, SEO, and community-contract tests;
  Python and browser suites remain required before merge.

---


