---
title: GitBanner Profile Card
date: 2026-05-19 07:20:12 +00:00
tags:
  - yashksaini-coder
  - GitHub Actions
draft: false
repo: https://github.com/yashksaini-coder/GitBanner
marketplace: https://github.com/marketplace/actions/gitbanner-profile-card
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/yashksaini-coder/GitBanner** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitbanner-profile-card) to find the latest changes.

## Action Summary

GitBanner is a GitHub Action that automatically generates a personalized stats banner (in SVG and/or PNG format) for your GitHub profile README, showcasing key metrics like total contributions, stars, language distribution, and project highlights. It simplifies the process of visually presenting your coding activity and achievements, updating the banner on a schedule or on demand. Its key capabilities include customizable themes, private repository inclusion, and seamless integration with profile repositories.

## What's Changed

## GitBanner v1.0.0 — first public release

GitBanner is a GitHub Action that renders a personalized stats banner (SVG + PNG) for your profile README. It captures total commits, stars, language distribution, project highlights, and a computed "coding persona" — all refreshed automatically on a schedule you control.

### Quick start

```yaml
- uses: yashksaini-coder/GitBanner@v1
  with:
    github-token: ${{ secrets.GITBANNER_PAT }}
```

See the [README](https://github.com/yashksaini-coder/GitBanner#quick-start) for full setup.

### What's in v1.0.0

**Features**

- SVG and PNG banner on a 1600×900 canvas
- **Row 1** — total commits, total stars, languages used (with pills), avg repo lifespan, public/private split
- **Row 2** — oldest project, most active project, latest project, computed coding persona (Open Source Star, Polyglot, Veteran, Builder, …)
- **Row 3** — years of coding history, average commits per repo, go-to language
- **Footer** — followers/following, best year, and a UTC timestamp showing when the card was last refreshed
- Configurable inputs: `theme`, `format`, `output-path`, `exclude`, `include-private`, `commit`, `commit-message`
- Output: `card-path`
- Auto-commit of the regenerated card back to your repo (optional)

**Compatibility**

- Linux x64 runners (Ubuntu) for full PNG rendering
- Any platform for SVG-only output (`format: svg`)

### Setup

You'll need a Personal Access Token with `read:user` scope (and `repo` if you opt into private repo stats with `include-private: true`). Save it as a repo secret named `GITBANNER_PAT`. The token needs access to all owned repos for stats aggregation — see the [README security section](https://github.com/yashksaini-coder/GitBanner#security) for fine-grained PAT guidance.

### Feedback

Issues, ideas, and theme contributions welcome: https://github.com/yashksaini-coder/GitBanner/issues

**Full changelog:** https://github.com/yashksaini-coder/GitBanner/commits/v1.0.0

