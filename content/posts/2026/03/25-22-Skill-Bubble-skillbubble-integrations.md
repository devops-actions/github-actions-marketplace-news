---
title: SkillBubble Skills Update
date: 2026-03-25 22:16:07 +00:00
tags:
  - Skill-Bubble
  - GitHub Actions
draft: false
repo: https://github.com/Skill-Bubble/skillbubble-integrations
marketplace: https://github.com/marketplace/actions/skillbubble-skills-update
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Skill-Bubble/skillbubble-integrations** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillbubble-skills-update) to find the latest changes.

## Action Summary

SkillBubble Integrations is a GitHub Action designed to keep your professional skill profile up-to-date by automating skill tracking and suggestions. It offers two integration options: connecting with an AI assistant for personalized, conversational updates or syncing with your GitHub account to analyze personal contribution history and generate skill recommendations. This action streamlines the process of maintaining an accurate skill profile by leveraging automation and AI-driven insights, tailored for individual developers.

## Release notes

## SkillBubble Skills Update

Automatically update your [SkillBubble](https://www.skillbubble.com) skill profile from your git activity — changed files, commit messages, and dependencies are analysed and turned into skill suggestions.

### Quick start

```yaml
- uses: Skill-Bubble/skillbubble-integrations@v1
  with:
    api_key: ${{ secrets.SKILLBUBBLE_API_KEY }}
    mcp_endpoint: ${{ secrets.SKILLBUBBLE_MCP_ENDPOINT }}

**Full Changelog**: https://github.com/Skill-Bubble/skillbubble-integrations/commits/v1.0.0
