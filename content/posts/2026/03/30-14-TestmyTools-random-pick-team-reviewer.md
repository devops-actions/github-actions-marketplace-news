---
title: Random Team Reviewer
date: 2026-03-30 14:12:39 +00:00
tags:
  - TestmyTools
  - GitHub Actions
draft: false
repo: https://github.com/TestmyTools/random-pick-team-reviewer
marketplace: https://github.com/marketplace/actions/random-team-reviewer
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/TestmyTools/random-pick-team-reviewer** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/random-team-reviewer) to find the latest changes.

## Action Summary

The "Random Team Reviewer GitHub Action" automates the process of assigning a reviewer to a pull request by randomly selecting a member from a specified GitHub team while excluding the pull request author. It streamlines team-based code review workflows by eliminating manual reviewer selection and ensuring unbiased assignments. This action leverages GitHub API endpoints to fetch team members and request reviews directly.

## What's Changed

# 🚀 Release v1 Highlights

## 🔗 Full Changelog
[View all changes](https://github.com/TestmyTools/random-pick-team-reviewer/commits/v1)

---

## ✨ Features

- Automatically assigns a **random reviewer** from a specified GitHub team  
- Excludes the **pull request author** from the reviewer selection  

---

## 🛠 Improvements

### Debugging & Reliability
- Added clearer error messages when API calls fail  
  - (e.g., team member listing, reviewer assignment)
- Introduced a **PR preflight check** (`pulls.get`)  
  - Helps surface 404-style issues with:
    - repository owner  
    - repo name  
    - pull request number  
- Improved logging when no eligible reviewers are found  
  - (e.g., when the PR author is the only team member)

---

## ⚙️ Usage

### Required Inputs
- `github-token`
- `org`
- `team-slug`

### Trigger
- Works with:
  - `pull_request`
  - `pull_request_target`  

> Ensures pull request context is available for reviewer assignment
