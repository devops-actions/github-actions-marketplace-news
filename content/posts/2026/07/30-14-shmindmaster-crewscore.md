---
title: CrewScore
date: 2026-07-30 14:39:11 +00:00
tags:
  - shmindmaster
  - GitHub Actions
draft: false
repo: https://github.com/shmindmaster/crewscore
marketplace: https://github.com/marketplace/actions/crewscore
version: v0.6.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  CrewScore is a GitHub Action that scans agent system prompts to identify missing written guardrails, such as injection defense, human approval, cost limits, and stop conditions. It ensures that all 23 published controls are clearly stated in the prompts and provides a checklist of actionable findings for teams to improve their prompt writing practices.
---


Version updated for **https://github.com/shmindmaster/crewscore** to version **v0.6.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/crewscore) to find the latest changes.

## Action Summary

CrewScore is a GitHub Action that scans agent system prompts to identify missing written guardrails, such as injection defense, human approval, cost limits, and stop conditions. It ensures that all 23 published controls are clearly stated in the prompts and provides a checklist of actionable findings for teams to improve their prompt writing practices.

## What's Changed


No scoring change. Ruleset remains `crewscore-hygiene@0.6.0`.

### Fixed

- **Internal scan dumps removed from the public tree** (`.tmp-pendoah-scans/`,
  now gitignored) — they were CrewScore self-scan output over unrelated local
  repositories and should never have been published.
- `scan` no longer drops files over 500KB silently; it now says which file it
  skipped and how to score it directly with `crewscore test --prompt-file`.
- `scan --require` prints a confirmation line when every required control is
  present, instead of passing silently.
- Corrected the described sample size of the configuration-smells study
  (arXiv:2606.15828) in `docs/validation.md` and an old changelog entry: the
  paper's corpus is 100 popular projects, not 2,000. All other quoted figures
  were already consistent.
- Regenerated `docs/validation-corpus.md` and `examples/corpus/LEADERBOARD.md`
  stamps (ruleset `@0.6.0`, no numeric changes) so the committed reports match
  a fresh harness run again.
- Browser share tests expand the collapsed "More share options" disclosure, so
  the assertion that downloaded SVG cards exclude prompt text runs again;
  refreshed the stale share-card snapshot from the viral-result-moment copy
  change.

### Improved

- **Share cards download as PNG** (2x, rasterized in the browser from the same
  SVG source; SVG fallback if encoding fails). Social sites reject SVG uploads,
  so the previous SVG-only download dead-ended for most users. The README
  badge stays SVG. Browser tests assert the PNG bytes and that the SVG source
  still never contains prompt text.
- **README badge works instantly:** "Add badge to README" now copies markdown
  using a hosted generic badge (`crewscore.ai/assets/brand/checked-badge.svg`)
  linked to the shared result, with the personalized N/23 SVG noted as the
  optional extra step. Previously the copied markdown 404'd until the user
  generated and committed an SVG themselves.
- **Coding-agent one-click example:** the site now loads an `AGENTS.md`-style
  sample alongside the support-assistant one, demonstrating that config files
  get a smell verdict rather than a 0-100 governance grade.
- **External PRs get CI:** untrusted (fork/bot) pull requests were excluded
  from the self-hosted runner for security and previously received no
  validation at all; they now run the pytest and browser suites on ephemeral
  GitHub-hosted runners, with Playwright traces uploaded on failure.
- CONTRIBUTING documents the CI-gate/auto-merge review model so external
  contributors aren't surprised by the absence of a human review gate.
- X and LinkedIn share buttons moved out of the collapsed disclosure into the
  primary share row; badge markdown now explains where `crewscore-result.svg`
  comes from.
- README embeds the terminal demo GIF; sitemap gained `lastmod`; the site
  declares `og:site_name`; dependabot now watches pip, npm, and Actions.

- **Browser UX (viral result moment):** large **N/23** coverage meter, **Biggest gap**
  hero card, product paths (ChatGPT / Claude / Cursor / Other), corpus shock
  strip (production-scoped 10/100), primary **Copy share text**, and share
  cards that lead with coverage + hero gap — still coverage, not a safety grade.
- **Brand system:** coverage-bars mark + **Grok Imagine** icon/mood art;
  social and GitHub banners composite Imagine plates with exact catalog/corpus
  numbers (`scripts/compose_imagine_brand.py`). Vector mark remains for sharp
  UI. Run the compose script after catalog or corpus number changes.

---


