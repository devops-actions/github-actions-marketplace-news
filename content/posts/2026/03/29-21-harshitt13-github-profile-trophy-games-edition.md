---
title: GitHub Profile Trophy - Games Edition
date: 2026-03-29 21:51:24 +00:00
tags:
  - harshitt13
  - GitHub Actions
draft: false
repo: https://github.com/harshitt13/github-profile-trophy-games-edition
marketplace: https://github.com/marketplace/actions/github-profile-trophy-games-edition
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/harshitt13/github-profile-trophy-games-edition** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-profile-trophy-games-edition) to find the latest changes.

## Action Summary

This GitHub Action, "GitHub Profile Trophy: Games Edition," generates visually appealing GitHub profile trophies styled with League of Legends rank icons. It automates the creation of dynamic achievement displays based on GitHub statistics, helping developers showcase their contributions and milestones in a gamified format. The action offers customization options like themes, columns, and rank filters, providing a personalized way to enhance GitHub profile READMEs.

## What's Changed

### 🏆 GitHub Profile Trophy - Games Edition v1.0.0

This initial release completely revamps the popular `github-profile-trophy` system to solve the widespread API rate-limit issues, while introducing beautiful game-themed rank badges.

**Key Features in this Release:**
* **Self-Hosted Architecture:** Users now deploy their own lightweight Vercel instance. This completely bypasses the centralized server rate limits that broke the original project.
* **Security Lock:** Deployments are locked to the specific `PROFILE_USERNAME` to prevent others from hijacking your Vercel instance and causing limits.
* **Game Themes:** Replaced the original trophies with League of Legends rank badges (Iron through Challenger).
* **Updated GitHub Action:** A new `action.yml` and Deno script that easily fetches from your personal Vercel deployment and commits the SVG to your profile README.

**How to Upgrade / Use:**
Please review the updated `README.md` for instructions on deploying your Vercel instance and updating your workflow file to include the new `api_url` requirement.
