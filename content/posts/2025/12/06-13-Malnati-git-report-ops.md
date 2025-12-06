---
title: Git Report Ops
date: 2025-12-06 13:01:04 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/git-report-ops
marketplace: https://github.com/marketplace/actions/git-report-ops
version: v1.3.1
dependentsNumber: "?"
---


Version updated for **https://github.com/Malnati/git-report-ops** to version **v1.3.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-report-ops) to find the latest changes.

## Release notes

This changes updates the `action.yml` for the `Git Report Ops` GitHub Action to version 1.3.1, focusing on a critical bug fix related to injecting the signature into the pull request (PR) body. It also includes minor documentation and comment cleanups for clarity.

**Critical bug fix:**

* Updated the engine version to v1.3.1 and revised the description to highlight the critical fix for signature injection in the PR body.
* Explicitly marked the section in the PR body generation script where the signature is injected, clarifying and correcting the implementation.

**Documentation and comment improvements:**

* Cleaned up comments and labels throughout the workflow to remove scenario references and improve readability, especially around PR analysis and notification steps. [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L173-R171) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L213-R211) [[3]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L228-R226) [[4]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L243-R241)
* Updated the template input section to clarify its purpose and removed the note about internal defaults.
* Removed unused comment about caller ID search in the signature search logic for simplicity.Updated action version to v1.3.1 and fixed critical issue with signature injection in PR body.
