---
title: LogicBalls SEO Meta Check
date: 2026-06-09 23:05:23 +00:00
tags:
  - LogicBallsAI
  - GitHub Actions
draft: false
repo: https://github.com/LogicBallsAI/seo-meta-check
marketplace: https://github.com/marketplace/actions/logicballs-seo-meta-check
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LogicBallsAI/seo-meta-check** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/logicballs-seo-meta-check) to find the latest changes.

## What's Changed

**Release notes:**

First public release. A GitHub Action that lints on-page SEO across your HTML and Markdown pages in CI, so metadata problems get caught in a pull request instead of weeks later in your rankings.

**What it checks** — HTML: a present title within the recommended length, a meta description within range, exactly one `<h1>`, a `rel="canonical"` link, the core Open Graph tags, a `twitter:card`, and a `lang` attribute. Markdown: YAML front-matter `title` and `description`/`summary` within length limits, and no duplicate body H1s. All thresholds are tunable.

**Usage**

```yaml
- uses: logicballs/seo-meta-check@v1
  with:
    files: dist/**/*.html, content/**/*.md
```

`files` takes paths, globs, directories, or live URLs. Configurable via the `*-min`/`*-max`, `require-open-graph`, and `fail-on` inputs; exposes `result`, `errors`, `warnings`. No dependencies. See the README for the full reference.

Maintained by LogicBalls — https://logicballs.com

---
