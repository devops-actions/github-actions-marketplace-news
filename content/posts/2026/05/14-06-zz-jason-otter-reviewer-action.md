---
title: Otter Reviewer
date: 2026-05-14 06:26:09 +00:00
tags:
  - zz-jason
  - GitHub Actions
draft: false
repo: https://github.com/zz-jason/otter-reviewer-action
marketplace: https://github.com/marketplace/actions/otter-reviewer
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/zz-jason/otter-reviewer-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/otter-reviewer) to find the latest changes.

## Action Summary

Otter Reviewer is a GitHub Action designed to automate pull request code reviews by running a customizable review agent on a self-hosted GitHub Actions runner. It translates the agent's output into GitHub inline comments and posts them using a GitHub App identity, streamlining the review process and reducing manual effort. The action is compatible with the default Codex agent or other CLI tools that adhere to a specific JSON schema, making it adaptable for various review workflows.

## What's Changed

- Use transient git auth for review preparation (acdc8e2)
- Harden agent review execution (48a8666)
- Document checkout v6 usage (4d6506d)
- Initial Marketplace action (0b00b9b)
