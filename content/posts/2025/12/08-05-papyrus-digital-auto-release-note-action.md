---
title: Release Note Generator
date: 2025-12-08 05:20:00 +00:00
tags:
  - papyrus-digital
  - GitHub Actions
draft: false
repo: https://github.com/papyrus-digital/auto-release-note-action
marketplace: https://github.com/marketplace/actions/release-note-generator
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/papyrus-digital/auto-release-note-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-note-generator) to find the latest changes.

## Release notes

### 🚀 Initial Release of Auto Release Notes Action!

We are excited to launch the official GitHub Action for [AutoReleaseNote.com](https://www.autoreleasenote.com). You can now generate professional, AI-written release notes directly inside your CI/CD pipelines.

#### ✨ Features in v1.0.0
* **AI-Powered Summaries:** Turns raw commit logs into human-readable features.
* **Hosted URLs:** Automatically generates a shareable link for your release notes.
* **Flexible Modes:** Support for `tag`, `commit`, and `branch` based generation.
* **Zero Config:** Works out of the box with standard Git history.

#### 📦 Installation
Add this to your workflow:

```yaml
- uses: papyrus-digital/auto-release-note-action@v1
        id: arn
        with:
          api_key: ${{ secrets.ARN_API_KEY }}
          project_id: ${{ secrets.ARN_PROJECT_ID }}
          mode: commit
          from_ref: ${{ github.event.pull_request.base.sha }}
          to_ref: ${{ github.event.pull_request.head.sha }}

- name: Comment on PR
  uses: actions/github-script@v7
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    script: |
      github.rest.issues.createComment({
        ...context.repo,
        issue_number: context.issue.number,
        body: `📝 Release notes: ${'${{ steps.arn.outputs.release_url }}'}`
      })
