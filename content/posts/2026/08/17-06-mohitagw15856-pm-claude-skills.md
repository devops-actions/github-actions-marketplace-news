---
title: Validate Agent Skills
date: 2026-08-17 06:04:40 +00:00
tags:
  - mohitagw15856
  - GitHub Actions
draft: false
repo: https://github.com/mohitagw15856/pm-claude-skills
marketplace: https://github.com/marketplace/actions/validate-agent-skills
version: v76.2.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  PM Skills is an open-source library of 1099 Agent Skills that provide plain-markdown SKILL.md files to teach AI assistants professional tasks. Each skill bundles the framework, output template, quality checks, and anti-patterns, making it easier for AI assistants to perform tasks accurately at senior professional levels. PM Skills supports Claude, ChatGPT, Gemini, Cursor, Codex, and Hermes Agent, with ready-to-paste exports for other tools.
---


Version updated for **https://github.com/mohitagw15856/pm-claude-skills** to version **v76.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-agent-skills) to find the latest changes.

## Action Summary

PM Skills is an open-source library of 1099 Agent Skills that provide plain-markdown SKILL.md files to teach AI assistants professional tasks. Each skill bundles the framework, output template, quality checks, and anti-patterns, making it easier for AI assistants to perform tasks accurately at senior professional levels. PM Skills supports Claude, ChatGPT, Gemini, Cursor, Codex, and Hermes Agent, with ready-to-paste exports for other tools.

## What's Changed

**The SKILL.md validator that keeps these 1,099 skills honest now runs against yours — as a GitHub Action.**

```yaml
- uses: mohitagw15856/pm-claude-skills@v76
  with:
    path: .claude/skills   # optional — it finds them otherwise
```

Or without CI: `npx pm-claude-skills skillcheck`

---

## What it checks

Skill authoring is new enough that the mistakes are the same handful, and every one is cheap to catch:

- **Frontmatter** — present, well-formed, and a `name` that matches its folder
- **The `Use when …` trigger clause** — the highest-value line in a skill, because it's what a model matches on when deciding whether the skill applies at all
- **Leftover template text** — `your-skill-name`, `[Instructions for Claude to follow`
- **Structure** — a `# Title`, Quality Checks, Anti-Patterns
- **Length** — too short to trigger on, or too long for the trigger budget

Errors fail the build. Warnings are style advice and don't, unless you pass `--strict`.

## Findings land on the line

The reason to use an action rather than a shell step is annotation. Each finding carries a real line number and appears **inline on the pull request diff**:

```
::error file=skills/name-mismatch/SKILL.md,line=2,title=SkillCheck::Frontmatter name "totally-different" does not match folder "name-mismatch".
```

`errors`, `warnings` and `skills` are exposed as step outputs, populated **even when the check fails** — so you can comment on a PR or gate a later step on the numbers.

## One implementation, including for this repo

`scripts/skillcheck.mjs` is now a thin wrapper around the published `bin/skillcheck.mjs`, so this library is validated by exactly the same rules yours is. A linter that exempts itself isn't worth much.

## Also in this release

- **`design-system-generate`** — skill #1099, for the gap between *audit the system we have* and *extract the brand we have*: there is no system and something ships on Thursday.
- **`/design-review`** — a workflow recipe that critiques first, then measures. It closes on the split that makes findings schedulable: *"nine are a find-and-replace, three need a design decision"*.
- **The design skills compute their contrast numbers** instead of estimating them. `#777777` on white is 4.478 and fails AA; `#767676` is 4.542 and passes, and no amount of looking at a screenshot separates those. Six skills plus `brand-guidelines` call [notugly](https://github.com/mohitagw15856/notugly); the MCP server exposes `check_contrast` as an eighth tool.
- **Generated persona faces** on the playground chips and the starter-pack banner.

## Fixed since v76.2.0

- The Marketplace caps an action description at 125 characters and this one was 152. The folded YAML form counts the joined string, so wrapping it changed nothing — it had to actually be shorter.
- `npm-publish` now skips a version already on npm instead of failing with `E403`, which turned the last release red for no good reason.

---

Zero dependencies. No Docker image. No model call. MIT.

