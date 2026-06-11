---
title: Agent Skill CI
date: 2026-06-11 15:51:44 +00:00
tags:
  - mahitoh
  - GitHub Actions
draft: false
repo: https://github.com/mahitoh/skillci
marketplace: https://github.com/marketplace/actions/agent-skill-ci
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mahitoh/skillci** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-skill-ci) to find the latest changes.

## What's Changed

**skillci** is the missing CI gate for AI agent skills — lint, safety-audit, and scenario-test your `SKILL.md` files before you trust them.

## Use it as a GitHub Action

```yaml
- uses: actions/checkout@v4
- uses: mahitoh/skillci@v0
  with:
    path: .
```

The Action is **self-contained** — it builds from its own pinned source, so it needs no npm package or other registry. It fails your build if any skill has an error-level finding (malicious patterns, prompt injection, credential/wallet access, broken structure).

## What it checks
- **lint** — frontmatter, name, description, broken file references
- **audit** — 11 static safety rules targeting real ClawHavoc / ToxicSkills attack patterns (curl|sh, credential & SSH & wallet theft, env-secret exfiltration, prompt-injection override, hidden instructions, obfuscated payloads, unscoped rm -rf)
- **test** — scenario tests run through an installed agent CLI (skipped automatically in CI where no agent is present)

Transparent 0–100 scoring with a VERIFIED verdict. CI green on Node 18/20/22.

## Contributing
Three low-barrier surfaces: add a **safety rule** (6 lines of YAML), add an **agent adapter** (one file), or contribute a **scenario pack**. See CONTRIBUTING.md.

