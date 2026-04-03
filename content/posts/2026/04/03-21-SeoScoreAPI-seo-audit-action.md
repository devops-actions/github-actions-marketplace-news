---
title: SEO Audit Action
date: 2026-04-03 21:44:29 +00:00
tags:
  - SeoScoreAPI
  - GitHub Actions
draft: false
repo: https://github.com/SeoScoreAPI/seo-audit-action
marketplace: https://github.com/marketplace/actions/seo-audit-action
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SeoScoreAPI/seo-audit-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/seo-audit-action) to find the latest changes.

## Action Summary

The SEO Audit Action is a GitHub Action designed to automate SEO audits for websites within a CI/CD pipeline, enabling developers to identify and address SEO-related issues before deployment. It performs 28 checks across meta, technical, social, performance, and accessibility categories, providing actionable insights such as an SEO score, letter grade, and detailed issue reports. This action helps prevent SEO regressions, streamlines optimization processes, and ensures consistent website performance and visibility.

## What's Changed

Run automated SEO audits on your website as part of your CI/CD pipeline. Catch SEO regressions before they ship to production.

  ## What it does

  - Runs a 28-check SEO audit against any URL
  - Posts score, grade, and top issues to the GitHub Actions summary
  - Optionally fails the build if the score drops below your threshold
  - Returns score, grade, issue count, and report URL as step outputs

  ## Inputs

  | Input | Required | Default | Description |
  |-------|----------|---------|-------------|
  | `url` | Yes | — | URL to audit |
  | `api-key` | Yes | — | API key from [seoscoreapi.com](https://seoscoreapi.com) |
  | `threshold` | No | `80` | Minimum score to pass (0-100) |
  | `fail-on-threshold` | No | `true` | Fail the build if score is below threshold |

  ## Outputs

  | Output | Description |
  |--------|-------------|
  | `score` | SEO score (0-100) |
  | `grade` | Letter grade (A+ to F) |
  | `issues` | Number of issues found |
  | `report-url` | Link to full report |

  ## Quick start

  ```yaml
  - name: SEO Audit
    uses: SeoScoreAPI/seo-audit-action@v1
    with:
      url: "https://your-site.com"
      api-key: ${{ secrets.SEO_SCORE_API_KEY }}
      threshold: 85

  Get a free API key (5 audits/day) at seoscoreapi.com. No credit card required.

  What gets checked

  28 checks across 5 categories: meta & content, technical SEO, social/OG tags, performance, and accessibility.

  Links

  - Full documentation
  - API docs
  - Example workflow with PR comments

