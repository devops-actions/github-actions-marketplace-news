---
title: AI Blog Post Generator — roadtrip-blogger
date: 2026-07-13 11:53:30 +00:00
tags:
  - cazerme
  - GitHub Actions
draft: false
repo: https://github.com/cazerme/blog-marketing-skills
marketplace: https://github.com/marketplace/actions/ai-blog-post-generator-roadtrip-blogger
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action generates and optimizes blog posts using the `roadtrip-blogger` agent, which creates North American road-trip blog posts that are unique and verified. It integrates with Claude's skills to generate content and ensures that the blog remains SEO-optimized and GEO-focused by checking for duplicates and facts already published. The action can be triggered by a schedule or manually and generates posts in the user's site's format, ensuring no duplication and factual accuracy.
---


Version updated for **https://github.com/cazerme/blog-marketing-skills** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-blog-post-generator-roadtrip-blogger) to find the latest changes.

## Action Summary

This GitHub Action generates and optimizes blog posts using the `roadtrip-blogger` agent, which creates North American road-trip blog posts that are unique and verified. It integrates with Claude's skills to generate content and ensures that the blog remains SEO-optimized and GEO-focused by checking for duplicates and facts already published. The action can be triggered by a schedule or manually and generates posts in the user's site's format, ensuring no duplication and factual accuracy.

## What's Changed

Three GitHub Actions, all verified green in CI self-tests (generate / optimize / pipeline suites):

- **`cazerme/blog-marketing-skills@v1`** — generates one non-duplicating road-trip blog post per run (roadtrip-blogger agent: site-format discovery, coverage-ledger dedup gate, primary-source fact verification) and opens it as a PR
- **`cazerme/blog-marketing-skills/optimize@v1`** — SEO/GEO-optimizes an existing post (blog-seo-geo skill over aaron-marketing: fail-closed engine, number-fabrication guard); the optimization report becomes the PR body; idempotent
- **`cazerme/blog-marketing-skills/pipeline@v1`** — the full loop in one step: generate → optimize → one born-optimized PR

**Auth**: `claude_code_oauth_token` (Claude Pro/Max subscription — no API credits needed) or `anthropic_api_key` (Console billing; needs a tier whose ITPM fits an agent session).

Consumer recipes (daily cron, permissions, concurrency lock) in the [README](https://github.com/cazerme/blog-marketing-skills#github-action--scheduled-blog-generation) ([中文](https://github.com/cazerme/blog-marketing-skills/blob/main/README.zh-CN.md)). Also in this repo: the blog-marketing Claude Code plugin (the skill + agent these actions run).

🤖 Generated with [Claude Code](https://claude.com/claude-code)
