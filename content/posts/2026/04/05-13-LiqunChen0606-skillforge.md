---
title: SkillForge — SKILL.md quality check
date: 2026-04-05 13:41:46 +00:00
tags:
  - LiqunChen0606
  - GitHub Actions
draft: false
repo: https://github.com/LiqunChen0606/skillforge
marketplace: https://github.com/marketplace/actions/skillforge-skill-md-quality-check
version: v0.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LiqunChen0606/skillforge** to version **v0.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillforge-skill-md-quality-check) to find the latest changes.

## Action Summary

SkillForge is a GitHub Action and CLI tool designed for validating, securing, and managing AI skill files (e.g., `SKILL.md`) used in agent-based systems. It automates quality assurance by performing structural and security checks, detecting issues such as missing metadata, prompt-injection vulnerabilities, and broken references. Additionally, it enables skill signing with Ed25519 for tamper detection and supports integration into CI pipelines, pre-commit hooks, and plugins for streamlined skill development workflows.

## What's Changed

## What's new in v0.5.0

SkillForge is now a **pip-installable SKILL.md quality tool** — no Rust build required for the common case.

### Install

```bash
pip install aif-skillforge
aif check SKILL.md
```

### Use it in three places

**Pre-commit hook:**
```yaml
repos:
  - repo: https://github.com/LiqunChen0606/skillforge
    rev: v0.5.0
    hooks:
      - id: aif-check
```

**GitHub Action:**
```yaml
- uses: LiqunChen0606/skillforge@v0.5.0
  with:
    path: ./skills
```

**Claude Code plugin:**
```
/plugin install LiqunChen0606/skillforge
/lint-skill my-skill.md
```

### What it checks

- **10 structural lint checks**: frontmatter, required sections, empty blocks, name format, hash verification, claim-evidence linkage, broken references, undefined terms
- **6 security checks** (OWASP AST10 aligned): prompt injection, hidden Unicode, dangerous tools, external fetches, privilege escalation, data exfiltration

### Breaking changes

- Legacy `@end` AIF syntax (v1) is no longer accepted. Use `aif migrate-syntax <path>` to convert existing `.aif` files.

### Python API (16 functions)

`parse`, `compile`, `render`, `lint`, `scan`, `infer`, `import_markdown`, `import_html`, `import_skill_md`, `export_skill_md`, `clean_html`, `hash_skill`, `generate_keypair`, `sign_skill`, `verify_skill`, `migrate_syntax`

### Links

- **PyPI**: https://pypi.org/project/aif-skillforge/0.5.0/
- **Tutorial**: [tutorial/skillforge_tutorial.ipynb](tutorial/skillforge_tutorial.ipynb)
- **Document roundtrips**: [tutorial/skillforge_roundtrips.ipynb](tutorial/skillforge_roundtrips.ipynb)
